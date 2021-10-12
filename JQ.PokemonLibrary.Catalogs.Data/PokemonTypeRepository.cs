using JQ.PokemonLibrary.Catalogs.Core.Model;
using JQ.PokemonLibrary.Catalogs.Core.Repositories;
using JQ.PokemonLibrary.SharedKernel.Core;
using System;
using System.Collections.Generic;
using System.Text;

namespace JQ.PokemonLibrary.Catalogs.Data
{
    public class PokemonTypeRepository :  BaseGenericRepository<PokemonType>, IPokemonTypeRepository
    {
        public PokemonTypeRepository() : base (new PokemonLibraryCatalogsDBContext())
        {

        }
    }
}
