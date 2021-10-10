using AutoMapper;
using JQ.PokemonLibrary.API.Models;
using JQ.PokemonLibrary.Core.Model;

namespace JQ.PokemonLibrary.API.Mappings
{
    public class PokemonProfile: Profile
    {
        public PokemonProfile()
        {
            CreateMap<CreatePokemonDTO, Pokemon>();
            CreateMap<UpdatePokemonDTO, Pokemon>();
            CreateMap<PatchPokemonDTO, Pokemon>();
            CreateMap<Pokemon, CreatePokemonDTO>();
            CreateMap<Pokemon, UpdatePokemonDTO>();
            CreateMap<Pokemon, PatchPokemonDTO>();
        }
    }
}
