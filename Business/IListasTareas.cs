using WebApiToDoList.Models;

namespace WebApiToDoList.Busniss
{
    public interface IListasTareas<TModel> where TModel : class
    {
        Task<IEnumerable<TModel?>> ObtenerLista();
        Task<TModel?> ObtenerId(int idTarea);
        Task<TModel?> Crear(ListaTarea tarea);
        Task<TModel?> Actualizar(ListaTarea tarea);
        Task Eliminar(int idTarea);

    }
}