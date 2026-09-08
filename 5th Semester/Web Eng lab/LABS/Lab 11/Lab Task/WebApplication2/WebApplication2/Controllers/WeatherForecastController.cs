using Microsoft.AspNetCore.Mvc;
using WebApplication2.Models;

public class WeatherForecastController : Controller
{
    private readonly LabDatabaseContext _context;

    public WeatherForecastController(LabDatabaseContext context)
    {
        _context = context;
    }

    public IActionResult Index()
    {
        // Fetch all students from the database using LINQ
        var students = _context.Students.ToList();
        return View(students); // Pass the data to the view
    }
}
