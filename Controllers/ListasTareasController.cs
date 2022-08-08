using Microsoft.AspNetCore.Mvc;
using WebApiToDoList.Busniss;
using WebApiToDoList.Models;

namespace WebApiToDoList.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ListasTareasController : ControllerBase
    {

        private readonly ListasTareas _tareas;

        public ListasTareasController(ListasTareas tarea)
        {
            _tareas = tarea;
        }


        // GET: api/ListaTareas
        [HttpGet]
        public async Task<ActionResult> GetLista()
        {
            var lista = await _tareas.ObtenerLista();
            if (lista == null) return NotFound();
            return Ok(lista);
        }

        // GET: api/ListaTareas/5
        [HttpGet("{id}")]
        public async Task<ActionResult> GetTarea(int id)
        {
            var listaTareas = await _tareas.ObtenerId(id);
            if (listaTareas == null) return NotFound($"La tarea con id {id} no existe");
            return Ok(listaTareas);
        }

        // POST: api/ListaTareas
        [HttpPost]
        public async Task<ActionResult> PostTarea(ListaTarea tarea)
        {
            if (!ModelState.IsValid) return BadRequest(ModelState);

            try
            {
                var infoResultado = await _tareas.Crear(tarea);
                if (infoResultado == null) return NotFound(ModelState);
                return Ok(infoResultado);
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }

        // PUT: api/ListaTarea/5
        [HttpPut("{id}")]
        public async Task<IActionResult> ActualizarTarea(int id, ListaTarea tarea)
        {
            if (!ModelState.IsValid) return BadRequest(ModelState);

            try
            {
                var infoResultado = await _tareas.Actualizar(tarea);
                if (infoResultado == null) return NotFound();
                return Ok(infoResultado);
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }


        //DELETE: api/ListaTareas/5
        [HttpDelete("{id}")]
        public async Task<IActionResult> EliminarTarea(int id)
        {
            var infoResultado = await _tareas.ObtenerId(id);
            if (infoResultado == null) return NotFound($"La tarea con id {id} que esta intentando eliminar no existe");

            try
            {
                await _tareas.Eliminar(id);
                return Ok($"La tarea con id {id} fue eliminada con éxito");
            }
            catch (Exception ex)
            {

                throw new Exception(ex.Message);
            }

        }
    }
}
