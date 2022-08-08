using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace WebApiToDoList.Models
{
    public class Responsable
    {
        [Key]
        public int ID { get; set; }
        [ForeignKey("TipoDocumento")]
        public int IDTipoDocumento { get; set; }
        public string? NumeroDocumento { get; set; }
        public string? PrimerNombre { get; set; }
        public string? SegundoNombre { get; set; }
        public string? PrimerApellido { get; set; }
        public string? SegundoApellido { get; set; }

        //Tablas referencias
        public Lista? Lista { get; set; }
        public ICollection<Tarea>? Tareas { get; set; }

    }
}
