using Login.Models;
using Microsoft.AspNetCore.Mvc;
using System.Diagnostics;
using System.Linq;
using Microsoft.AspNetCore.Http;

namespace Login.Controllers
{
    public class HomeController : Controller
    {
        private readonly MyDbContext context;
        public HomeController(MyDbContext context)
        {
            this.context = context;
        }



      
       
        public IActionResult Login()
        {
            if (HttpContext.Session.GetString("UserSession") != null)
            {
                return RedirectToAction("Index");
             
                
            }
            return View();
        }
        [HttpPost]
        public IActionResult Login(UserTbl user)
        {
            var myUser = context.UserTbls.FirstOrDefault(x => x.RollNum == user.RollNum && x.Password == user.Password);
            if (myUser != null)
            {
                HttpContext.Session.SetString("UserSession", myUser.RollNum);
                return RedirectToAction("Index"); // Redirect to the static HTML file
            }
            else
            {
                ViewBag.Message = "Login Failed...";
            }
            return View();
        }

        public IActionResult Index()
        {
            if (HttpContext.Session.GetString("UserSession") != null)
            {
                ViewBag.MySession = HttpContext.Session.GetString("UserSession").ToString();
            }
            else
            {
                RedirectToAction("Login");
            }
            return View();
        }

        public IActionResult Logout()
        {
            if (HttpContext.Session.GetString("UserSession") != null)
            {
                HttpContext.Session.Remove("UserSession");
                return RedirectToAction("Login");
            }
            return View();
        }

        public IActionResult Register()
        {
            return View();
        }

        [HttpPost]
        public async Task<IActionResult> Register(UserTbl user)
        {
            if(ModelState.IsValid)
            {
                await context.UserTbls.AddAsync(user);
                await context.SaveChangesAsync();
                TempData["Success"] = "Registered Successfully";
                return RedirectToAction("Login");
            }
            return View();
        }
        public IActionResult News()
        {
            return View();
        }
        public IActionResult Alumnigroup()
        {
            return View();
        }


        public IActionResult Events()
        {
            return View();
        }
        public IActionResult MySSUET()
        {
            return View();
        }
        public IActionResult NewAlumni()
        {
            return View();
        }
        public IActionResult Engage()
        {
            return View();
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
        
    }
}