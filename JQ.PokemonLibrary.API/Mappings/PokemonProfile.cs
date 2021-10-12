using AutoMapper;
using JQ.PokemonLibrary.API.Models;
using JQ.PokemonLibrary.Core.Model;
using System.Collections.Generic;

namespace JQ.PokemonLibrary.API.Mappings
{
    public class PokemonProfile: Profile
    {
        public PokemonProfile()
        {
            CreateMap<CreatePokemonDTO, Pokemon>();
            CreateMap<UpdatePokemonDTO, Pokemon>();
            CreateMap<PatchPokemonDTO, Pokemon>();
            CreateMap<PokemonDTO, Pokemon>();
                //.ForMember(dest => dest.PokemonType1, o => o.MapFrom(src => src))
                //.ForMember(dest => dest.PokemonType2, o => o.MapFrom(src => src));
            CreateMap<PokemonTypeDTO, PokemonType>();

            CreateMap<Pokemon, CreatePokemonDTO>();
            CreateMap<Pokemon, UpdatePokemonDTO>();
            CreateMap<Pokemon, PatchPokemonDTO>();
            CreateMap<PokemonType, PokemonTypeDTO>();
            CreateMap<Pokemon, PokemonDTO>();
                //.ForMember(i => i.PokemonType1, s => s.MapFrom(x => x.PokemonType1))
                //.ForMember(i => i.PokemonType2, s => s.MapFrom(x => x.PokemonType2));
            
            CreateMap<List<Pokemon>, List<PokemonDTO>>();
        }
    }
}
