using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using LabWebApi.Data;
using LabWebApi.Models;

namespace LabWebApi.Controllers
{
    public class StudentController : Controller
    {
        private readonly ApplicationDbContext _context;

        public StudentController(ApplicationDbContext context)
        {
            _context = context;
        }

        // GET: Student
        public async Task<IActionResult> Index()
        {
            var students = await _context.Students.ToListAsync();
            return View(students);
        }

        // GET: Student/Create
        public IActionResult Create()
        {
            return View();
        }

        // POST: Student/Create
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create(string Name, int Age)
        {
            // Validate input
            if (!string.IsNullOrWhiteSpace(Name) && Age > 0)
            {
                var student = new Student { Name = Name, Age = Age };
                _context.Add(student);
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));
            }

            // If validation fails, reload the Create view
            return View();
        }

        // GET: Student/StudentsOlderThan
        [HttpGet]
        public async Task<IActionResult> StudentsOlderThan()
        {
            var students = await _context.Students
                .Where(s => s.Age > 18)
                .ToListAsync();
            return View(students);
        }
    }
}
