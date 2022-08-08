using Microsoft.EntityFrameworkCore;
using WebApiToDoList.Busniss;
using WebApiToDoList.Data;
using WebApiToDoList.Models;

var builder = WebApplication.CreateBuilder(args);
//var autirizacionOrigen = "_autirizacionOrigen";

// Add services to the container.

builder.Services.AddControllers();
// Learn more about configuring Swagger/OpenAPI at https://aka.ms/aspnetcore/swashbuckle
builder.Services.AddEndpointsApiExplorer();
builder.Services.AddSwaggerGen();

// Habilitar los CORS
//builder.Services.AddCors(options =>
//{
//    options.AddPolicy(name: autirizacionOrigen,
//        builder =>
//        {
//            builder.WithOrigins("http://localhost:3000")
//            .AllowAnyMethod()
//            .AllowAnyHeader();
//        });

//});

builder.Services.AddCors(options =>
{
    options.AddPolicy("AllowAll",
        builder =>
        {
            builder.AllowAnyMethod()
            .AllowAnyHeader()
            .AllowAnyOrigin();
        });

});

builder.Services.AddDbContext<DataContext>(options =>
                options.UseSqlServer(builder.Configuration.GetConnectionString("ConexionDB")));

builder.Services.AddTransient<IListasTareas<ListaTarea>, ListasTareas>();

builder.Services.AddTransient<ListasTareas, ListasTareas>();

var app = builder.Build();

// Configure the HTTP request pipeline.
if (app.Environment.IsDevelopment())
{
    app.UseSwagger();
    app.UseSwaggerUI();
}

app.UseCors("AllowAll");

//app.UseCors(autirizacionOrigen);

app.UseAuthorization();

app.MapControllers();

app.Run();
