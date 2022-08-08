using System.ComponentModel.DataAnnotations;

namespace WebApiToDoList.Models
{
    public class Lista
    {
        [Key]
        public int ID { get; set; }
        public string? Codigo { get; set; }
        public string? Descripcion { get; set; }
        public virtual ICollection<Responsable> Responsables { get; set; }
        public virtual ICollection<Tarea> Tareas { get; set; }

        public Lista()
        {
            this.Responsables = new HashSet<Responsable>();
            this.Tareas = new HashSet<Tarea>();
        }
    }
}
