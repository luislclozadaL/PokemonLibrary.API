using JQ.PokemonLibrary.API.Configuration;
using JQ.PokemonLibrary.Catalogs.Core.Repositories;
using JQ.PokemonLibrary.Catalogs.Core.Services;
using JQ.PokemonLibrary.Catalogs.Data;
using JQ.PokemonLibrary.Core.Repositories;
using JQ.PokemonLibrary.Core.Services;
using JQ.PokemonLibrary.Data.Repositories;
using JQ.PokemonLibrary.Service;
using JQ_PokemonLibrary.Catalogs.Service;
using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Hosting;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Hosting;
using Microsoft.OpenApi.Models;
using System;
using System.IO;

namespace JQ.PokemonLibrary.API
{
    public class Startup
    {
        public IConfiguration Configuration { get; }
        private string _corsPolicy = "PokemonCorsPolicy";

        public Startup(IConfiguration configuration)
        {
            Configuration = configuration;
        }

        // This method gets called by the runtime. Use this method to add services to the container.
        public void ConfigureServices(IServiceCollection services)
        {

            services.AddControllers();
            services.AddSwaggerGen(c =>
            {
                c.SwaggerDoc("v1", new OpenApiInfo { Title = "Welcome to the pokemon library", Version = "v1" });
                var filePath = Path.Combine(System.AppContext.BaseDirectory, "JQ.PokemonLibrary.API.xml");
                c.IncludeXmlComments(filePath);
            });
            services.AddCors(options =>
            {
                options.AddPolicy(_corsPolicy,
                    builder =>
                    {
                        builder
                        .SetIsOriginAllowedToAllowWildcardSubdomains()
                        .SetIsOriginAllowed(x => true)
                        .AllowAnyMethod()
                        .AllowAnyHeader()
                        .AllowCredentials()
                        .Build();
                    });
            });
            services.AddAutoMapper(AppDomain.CurrentDomain.GetAssemblies());


            services.AddTransient<IPokemonTypeRepository, PokemonTypeRepository>();
            services.AddTransient<IPokemonLibraryCatalogsService, PokemonLibraryCatalogsService>();
            services.AddTransient<IPokemonLibraryRepository, PokemonLibraryRepository>();
            services.AddTransient<IPokemonLibraryService, PokemonLibraryService>();
        }

        // This method gets called by the runtime. Use this method to configure the HTTP request pipeline.
        public void Configure(IApplicationBuilder app, IWebHostEnvironment env)
        {
            if (env.IsDevelopment())
            {
                app.UseDeveloperExceptionPage();
                app.UseSwagger();
                app.UseSwaggerUI(c => c.SwaggerEndpoint("/swagger/v1/swagger.json", "JQ.PokemonLibrary.API v1"));
            }
            app.UseCors();
            app.UseCorsMiddleware();
            app.UseHttpsRedirection();
            app.UseRouting();
            app.UseAuthorization();
            app.UseMiddleware<ExceptionHandlingMiddleware>();
            app.UseEndpoints(endpoints =>
            {
                endpoints.MapControllers();
            });
        }
    }
}
