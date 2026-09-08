using Microsoft.AspNetCore.Mvc;
using WebApplication2.Models;
using Microsoft.EntityFrameworkCore;

[ApiController]
[Route("api/[controller]")]
public class StudentsController : ControllerBase
{
    private readonly LabDatabaseContext _context;

    public StudentsController(LabDatabaseContext context)
    {
        _context = context;
    }

    [HttpGet]
    public async Task<ActionResult<IEnumerable<Student>>> GetStudents()
    {
        var students = await _context.Students.ToListAsync();
        return Ok(students);
    }

    [HttpGet("{id}")]
    public async Task<ActionResult<Student>> GetStudent(int id)
    {
        var student = await _context.Students.FindAsync(id);

        if (student == null)
        {
            return NotFound();
        }

        return Ok(student);
    }
    // POST: api/students
    [HttpPost]
    public async Task<ActionResult<Student>> PostStudent(Student student)
    {
        // Check if the model is valid
        if (!ModelState.IsValid)
        {
            return BadRequest(ModelState);
        }

        // Add the student to the database
        _context.Students.Add(student);
        await _context.SaveChangesAsync();

        // Return the created student with a 201 status code
        return CreatedAtAction(nameof(GetStudent), new { id = student.StudentId }, student);
    }
}
