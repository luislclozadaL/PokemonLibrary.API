using JQ.PokemonLibrary.Catalogs.Core.DTOs;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace JQ.PokemonLibrary.Catalogs.Core.Services
{
    public interface IPokemonLibraryCatalogsService
    {
        Task<PokemonTypeListServiceResponse> GetPokemonTypes();
    }
}
