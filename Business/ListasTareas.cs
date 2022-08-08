using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using WebApiToDoList.Data;
using WebApiToDoList.Models;

namespace WebApiToDoList.Busniss
{
    public class ListasTareas : IListasTareas<ListaTarea>
    {
        private readonly Data.DataContext _ConexionDB;

        public ListasTareas(DataContext conexionDB)
        {
            _ConexionDB = conexionDB;
        }


        //Metodo Obtener todos los registros
        public async Task<IEnumerable<ListaTarea?>> ObtenerLista()
        {
            return await _ConexionDB.ListaTarea.ToListAsync();
        }

        //Metodo Obtener un registro por ID
        public async Task<ListaTarea?> ObtenerId(int idTarea)
        {
            return await _ConexionDB.ListaTarea.FindAsync(idTarea);
        }

        //Metodo Insertar un registro
        public async Task<ListaTarea?> Crear(ListaTarea tarea)
        {
            _ConexionDB.ListaTarea.Add(tarea);
            await _ConexionDB.SaveChangesAsync();
            return tarea;
        }

        //Metodo Actualizar un registro
        public async Task<ListaTarea?> Actualizar(ListaTarea tarea)
        {
            _ConexionDB.Entry(tarea).State = EntityState.Modified;
            await _ConexionDB.SaveChangesAsync();
            return tarea;
        }

        //Metodo Eliminar por ID
        [HttpDelete]
        public async Task Eliminar(int idTarea)
        {
            var tarea = await ObtenerId(idTarea);

            if (tarea == null)
            {
                throw new Exception($"La tarea con id= {idTarea} no existe");
            }

            _ConexionDB.ListaTarea.Remove(tarea);
            await _ConexionDB.SaveChangesAsync();

        }
    }
}
