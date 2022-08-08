using System.ComponentModel.DataAnnotations;

namespace WebApiToDoList.Models
{
    public class ListaTarea
    {
		[Key]
		public int ID { get; set; }
		[Required]
		[StringLength(50)]
		public string? TituloTarea { get; set; }
		[Required]
		[StringLength(150)]
		public string? Responsable { get; set; }
		[Required]
		[StringLength(20)]
		public string? Estado { get; set; }

		[DataType(DataType.Date)]
		public DateTime FechaInicial { get; set; }

		[DataType(DataType.Date)]
		public DateTime? FechaFinal { get; set; } 
	}
}
