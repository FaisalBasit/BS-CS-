using System;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore;
using Login.Models;

namespace Login.Models;

public partial class MyDbContext : DbContext
{
    public MyDbContext()
    {
    }

    public MyDbContext(DbContextOptions<MyDbContext> options)
        : base(options)
    {
    }

    public virtual DbSet<UserTbl> UserTbls { get; set; }
    public virtual DbSet<UserTbl> AlumniGroups{ get; set; }
    protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
    {
        if (!optionsBuilder.IsConfigured)
        {

        }
    
    }

    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        modelBuilder.Entity<UserTbl>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("PK__user_tbl__3213E83F46A0C516");

            entity.ToTable("user_tbl");

            entity.HasIndex(e => e.Email, "UQ__user_tbl__AB6E6164EB168A93").IsUnique();

            entity.Property(e => e.Id).HasColumnName("id");
            entity.Property(e => e.Age).HasColumnName("age");
            entity.Property(e => e.YearOfGraduation).HasColumnName("year_of_graduation");  // New column
            entity.Property(e => e.BatchNumber)
                .HasMaxLength(50)
                .IsUnicode(false)
                .HasColumnName("batch_number");  // New column
            entity.Property(e => e.LinkedInId)
                .HasMaxLength(255)
                .IsUnicode(false)
                .HasColumnName("linkedin_id");  // New column
            entity.Property(e => e.Email)
                .HasMaxLength(255)
                .IsUnicode(false)
                .HasColumnName("email");
            entity.Property(e => e.Gender)
                .HasMaxLength(100)
                .IsUnicode(false)
                .HasColumnName("gender");
            entity.Property(e => e.Name)
                .HasMaxLength(100)
                .IsUnicode(false)
                .HasColumnName("name");
            entity.Property(e => e.RollNum)
                .HasMaxLength(255)
                .IsUnicode(false)
                .HasColumnName("roll_num");  // Corrected to match the table
            entity.Property(e => e.Password)
                .HasMaxLength(255)
                .IsUnicode(false)
                .HasColumnName("password");
        });
        modelBuilder.Entity<AlumniGroup>(entity =>
        {
            entity.HasKey(e => e.GId).HasName("PK__alumni_group__3213E83F46A0C516");

            entity.ToTable("alumni_group");

            entity.Property(e => e.GId).HasColumnName("G_id");
            entity.Property(e => e.Name).HasMaxLength(100).IsUnicode(false).HasColumnName("name");
            entity.Property(e => e.Description).HasMaxLength(100).IsUnicode(false).HasColumnName("description");
            entity.Property(e => e.RollNum).HasMaxLength(255).IsUnicode(false).HasColumnName("roll_num");

            // Foreign Key Relationship
            entity.HasOne<UserTbl>()
                .WithMany()
                .HasForeignKey(e => e.RollNum)
                .HasPrincipalKey(u => u.RollNum);
        });

        OnModelCreatingPartial(modelBuilder);
    }

    partial void OnModelCreatingPartial(ModelBuilder modelBuilder);

    public DbSet<Login.Models.AlumniGroup> AlumniGroup { get; set; } = default!;
}
