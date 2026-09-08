using System;
using System.ComponentModel.DataAnnotations;

namespace Login.Models
{
    public partial class UserTbl
    {
        public int Id { get; set; }
        [Required]
        public string Name { get; set; } = null!;
        [Required]
        public string Gender { get; set; } = null!;
        [Required]
        public int? Age { get; set; }
        [Required]
        public int? YearOfGraduation { get; set; }
        [Required]
        public string? BatchNumber { get; set; }
        public string? LinkedInId { get; set; }
        [Required]
        public string Email { get; set; } = null!;
        [Required]
        public string RollNum { get; set; } = null!;

        [DataType(DataType.Password)]
        [Required]
        public string Password { get; set; } = null!;

       
    }
    public class AlumniGroup
    {
        public int GId { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
        public string RollNum { get; set; }
    }

}
