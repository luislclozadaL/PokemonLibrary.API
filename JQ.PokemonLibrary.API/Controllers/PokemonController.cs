using AutoMapper;
using JQ.PokemonLibrary.API.Base;
using JQ.PokemonLibrary.API.Models;
using JQ.PokemonLibrary.Core.Model;
using JQ.PokemonLibrary.Core.Services;
using Microsoft.AspNetCore.JsonPatch;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace JQ.PokemonLibrary.API.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class PokemonController : ControllerBase
    {
        private IPokemonLibraryService _pokemonLibraryService;
        private IMapper _mapper;

        public PokemonController(IPokemonLibraryService pokemonLibraryService, IMapper mapper)
        {
            _pokemonLibraryService = pokemonLibraryService;
            _mapper = mapper;
        }

        [HttpPost]
        public async Task<IActionResult> CreatePokemon(CreatePokemonDTO pokemon)
        {
            var apiResponse = new ApiResponse<string>();
            var pokemonEntity = _mapper.Map<Pokemon>(pokemon);
            var bServiceResponse = await _pokemonLibraryService.AddPokemon(pokemonEntity);
            apiResponse.Data = bServiceResponse.Message;
            apiResponse.Success = bServiceResponse.Successfull;

            return apiResponse.Success ? CreatedAtAction(nameof(GetPokemonsById), new { pokemonId = pokemonEntity.Id }, new ApiResponse<PokemonDTO>() { Success= true, Data = _mapper.Map<Pokemon, PokemonDTO>(pokemonEntity) }) : BadRequest(apiResponse);
        }

        [HttpPut]
        [Route("{pokemonId}")]
        public async Task<IActionResult> UpdatePokemon(Guid pokemonId, UpdatePokemonDTO pokemon)
        {
            var apiResponse = new ApiResponse<string>();
            var pokemonEntity = _mapper.Map<Pokemon>(pokemon);
            pokemonEntity.Id = pokemonId;
            var bServiceResponse = await _pokemonLibraryService.UpdatePokemon(pokemonEntity);
            apiResponse.Data = bServiceResponse.Message;
            apiResponse.Success = bServiceResponse.Successfull;

            return Ok(apiResponse);
        }

        [HttpPatch]
        [Route("{pokemonId}")]
        public IActionResult PatchPokemon(int pokemonId, JsonPatchDocument<PatchPokemonDTO> pokemon)
        {
            //var apiResponse = new ApiResponse<string>();
            //var pokemonEntity = _mapper.Map<Pokemon>(pokemon);
            //var bServiceResponse = await _pokemonLibraryService.AddPokemon(pokemonEntity);
            //apiResponse.Data = bServiceResponse.Message;
            //apiResponse.Success = bServiceResponse.Successfull;
            return Ok();
            //return CreatedAtRoute("CreatePokemon", new { pokemonId = pokemonEntity.Id }, pokemonEntity);
        }

        [HttpGet]
        [Route("")]
        public async Task<IActionResult> GetPokemons(int? pageSize = 0, int? pageNumber = 0)
        {
            var apiResponse = new ApiResponse<IList<Pokemon>>();
            var bServiceResponse = await _pokemonLibraryService.GetPokemons(pageNumber*pageSize, pageSize);
            apiResponse.Data = bServiceResponse.Pokemons;
            apiResponse.Success = bServiceResponse.Successfull;
            return Ok(apiResponse);
        }

        [HttpGet]
        [Route("{pokemonId:Guid}")]
        public async Task<IActionResult> GetPokemonsById(Guid pokemonId)
        {
            var apiResponse = new ApiResponse<IList<PokemonDTO>>();
            var bServiceResponse = await _pokemonLibraryService.GetPokemonById(pokemonId);
            apiResponse.Data = _mapper.Map(bServiceResponse.Pokemons, apiResponse.Data);
            apiResponse.Success = bServiceResponse.Successfull;
            return Ok(apiResponse);
        }

        [HttpGet]
        [Route("{pokemonNumber:int}")]
        public async Task<IActionResult> GetPokemonsByNumber(int pokemonNumber)
        {
            var apiResponse = new ApiResponse<IList<Pokemon>>();
            var bServiceResponse = await _pokemonLibraryService.GetPokemonByNumber(pokemonNumber);
            apiResponse.Data = bServiceResponse.Pokemons;
            apiResponse.Success = bServiceResponse.Successfull;
            return Ok(apiResponse);
        }

        [HttpDelete]
        [Route("{pokemonId:Guid}")]
        public async Task<IActionResult> DeletePokemon(Guid pokemonId)
        {
            var apiResponse = new ApiResponse<string>();
            var bServiceResponse = await _pokemonLibraryService.DeletePokemon(pokemonId);
            apiResponse.Data = bServiceResponse.Message;
            apiResponse.Success = bServiceResponse.Successfull;
            return bServiceResponse.Exists ? NoContent() : BadRequest(apiResponse);
        }
    }
}
