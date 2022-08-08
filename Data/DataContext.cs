using Microsoft.EntityFrameworkCore;
using WebApiToDoList.Models;

namespace WebApiToDoList.Data
{
    public class DataContext : DbContext
    {
        public DataContext(DbContextOptions<DataContext> options) : base(options) { }
        public DbSet<ListaTarea> ListaTarea { get; set; } = null!;
        public DbSet<Tarea> Tarea { get; set; } = null!;

    }
}
