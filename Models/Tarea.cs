using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace WebApiToDoList.Models
{
	public class Tarea
	{
		[Key]
		public int ID { get; set; }
		[Required]
		[StringLength(50)]
		public string? DescripcionTarea { get; set; }
		[Required]
		[ForeignKey("Responsable")]
		public int IDResponsable { get; set; }
        [ForeignKey("Estado")]
		public int IDEstado { get; set; }
		public DateTime FechaInicial { get; set; }
		public DateTime? FechaFinal { get; set; }

		//Tablas referencias
		public virtual Lista? Lista { get; set; }
		public virtual Responsable? Responsable { get; set; }
	}
}
