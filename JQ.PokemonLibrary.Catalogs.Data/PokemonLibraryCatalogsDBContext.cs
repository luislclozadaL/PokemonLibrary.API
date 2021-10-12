using JQ.PokemonLibrary.Catalogs.Core.Model;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using System;
using System.IO;

namespace JQ.PokemonLibrary.Catalogs.Data
{
    public class PokemonLibraryCatalogsDBContext : DbContext
    {
        public PokemonLibraryCatalogsDBContext()
        {
        }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            var builder = new ConfigurationBuilder()
                .SetBasePath(Directory.GetCurrentDirectory())
                .AddJsonFile("appsettings.json", optional: true, reloadOnChange: true);

            IConfigurationRoot configuration = builder.Build();
            optionsBuilder.UseSqlServer(configuration.GetConnectionString("PokemonLibraryContext"));

            base.OnConfiguring(optionsBuilder);
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<PokemonType>().ToTable("PokemonType");
            base.OnModelCreating(modelBuilder);
        }

        public DbSet<PokemonType> Pokemons { get; set; }

    }
}
