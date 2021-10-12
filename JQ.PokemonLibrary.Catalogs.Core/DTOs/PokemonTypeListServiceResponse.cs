using JQ.PokemonLibrary.Catalogs.Core.Model;
using JQ.PokemonLibrary.SharedKernel.Base;
using System;
using System.Collections.Generic;
using System.Text;

namespace JQ.PokemonLibrary.Catalogs.Core.DTOs
{
    public class PokemonTypeListServiceResponse: BaseServiceResponse
    {
        public List<PokemonType> PokemonTypes { get; set; }
    }
}
