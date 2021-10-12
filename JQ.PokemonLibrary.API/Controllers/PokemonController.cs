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
using System.Net;
using System.Threading.Tasks;

namespace JQ.PokemonLibrary.API.Controllers
{
    /// <summary>
    /// This controller allows you to perform CRUD operations on the pokemons of our database.
    /// </summary>
    [Route("api/[controller]")]
    [ApiController]
    public class PokemonController : ControllerBase
    {
        private IPokemonLibraryService _pokemonLibraryService;
        private IMapper _mapper;

        /// <summary>
        /// 
        /// </summary>
        /// <param name="pokemonLibraryService">Requires a concrete class implementing IPokemonLibraryService contract</param>
        /// <param name="mapper">Requires an instance of automapper with already setup map configurations</param>
        public PokemonController(IPokemonLibraryService pokemonLibraryService, IMapper mapper)
        {
            _pokemonLibraryService = pokemonLibraryService;
            _mapper = mapper;
        }

        /// <summary>
        /// With this method you'll be able to query the whole pokemon's list and get paginated results when the optional 
        /// parameters page size and page number are specified.
        /// </summary>
        /// <remarks>
        /// If you want to incorporate this method to a UI you're encouraged to use also the pokemon/info method where you'll 
        /// get the number of records in the DB so you can calculate
        /// how many pages you will have based on you custom page size.
        /// </remarks>
        /// <param name="pageSize" example="10">Number of records per page.</param>
        /// <param name="pageNumber" example="2">User selected page.</param>
        /// <returns></returns>
        [ProducesResponseType(typeof(ApiResponse<IList<PokemonDTO>>), (int)HttpStatusCode.OK)]
        [ProducesResponseType(typeof(ApiResponse<string>), (int)HttpStatusCode.InternalServerError)]
        [HttpGet]
        [Route("")]
        public async Task<IActionResult> GetPokemons(int? pageSize = 0, int? pageNumber = 0)
        {
            var apiResponse = new ApiResponse<IList<PokemonDTO>>();
            var bServiceResponse = await _pokemonLibraryService.GetPokemons(pageNumber * pageSize, pageSize);
            apiResponse.Data = _mapper.Map(bServiceResponse.Pokemons, apiResponse.Data);
            apiResponse.Success = bServiceResponse.Successfull;
            return Ok(apiResponse);
        }

        /// <summary>
        /// Method to retrieve a pokemon by our database ID
        /// </summary>
        /// <remarks>
        /// We had to create our own id due to the fact that the list of pokemons now have several types of charizards, blastoise, etc... 
        /// but they keep the same pokemon number.
        /// </remarks>
        /// <param name="pokemonId" example="FD806A63-6E2A-4C41-A48A-029CAB6544F5">Our database pokemonID.</param>
        /// <returns></returns>
        [ProducesResponseType(typeof(ApiResponse<IList<PokemonDTO>>), (int)HttpStatusCode.OK)]
        [ProducesResponseType(typeof(ApiResponse<string>), (int)HttpStatusCode.InternalServerError)]
        [HttpGet]
        [Route("{pokemonId:Guid}")]
        public async Task<IActionResult> GetPokemonsById(Guid pokemonId)
        {
            var apiResponse = new ApiResponse<PokemonDTO>();
            var bServiceResponse = await _pokemonLibraryService.GetPokemonById(pokemonId);
            apiResponse.Data = _mapper.Map(bServiceResponse.Pokemon, apiResponse.Data);
            apiResponse.Success = bServiceResponse.Successfull;
            return Ok(apiResponse);
        }

        /// <summary>
        /// Method to retrieve a pokemon or all the pokemons with the same original discovery number.
        /// </summary>
        /// <remarks>
        /// This method might return more than one record based on the recent discoveries of pokemon subtypes
        /// </remarks>
        /// <param name="pokemonNumber">Original Pokemon List Number.</param>
        /// <returns></returns>
        [ProducesResponseType(typeof(ApiResponse<IList<PokemonDTO>>), (int)HttpStatusCode.OK)]
        [ProducesResponseType(typeof(ApiResponse<string>), (int)HttpStatusCode.InternalServerError)]
        [HttpGet]
        [Route("{pokemonNumber:int}")]
        public async Task<IActionResult> GetPokemonsByNumber(int pokemonNumber)
        {
            var apiResponse = new ApiResponse<IList<PokemonDTO>>();
            var bServiceResponse = await _pokemonLibraryService.GetPokemonByNumber(pokemonNumber);
            apiResponse.Data = _mapper.Map(bServiceResponse.Pokemons, apiResponse.Data);
            apiResponse.Success = bServiceResponse.Successfull;
            return Ok(apiResponse);
        }


        /// <summary>
        /// This method will allow you to get the number of records registered in the DB.
        /// </summary>
        /// <remarks>
        /// Usefull to calculate the number of pages you'll render on a UI.
        /// </remarks>
        /// <returns></returns>
        [ProducesResponseType(typeof(ApiResponse<IList<PokemonDTO>>), (int)HttpStatusCode.OK)]
        [ProducesResponseType(typeof(ApiResponse<string>), (int)HttpStatusCode.InternalServerError)]
        [HttpGet]
        [Route("info")]
        public async Task<IActionResult> GetPokemonsInfo()
        {
            var apiResponse = new ApiResponse<InfoDTO>();
            var bServiceResponse = await _pokemonLibraryService.GetNumberOfPokemons();
            apiResponse.Data = new InfoDTO { NumberOfRecords = bServiceResponse.NumberOfPokemons };
            apiResponse.Success = bServiceResponse.Successfull;
            return Ok(apiResponse);
        }

        /// <summary>
        /// This method allows you to register a new Pokemon
        /// </summary>
        /// <remarks>
        /// But there are limitations!! Only six generations have been discovered so far. There are rumors that a 7th one just appeared on a 
        /// remote island in the confines of the earth. So you're only allowed to register pokemon from generations 1 to 7.
        /// 
        /// To review available Pokemon Types check the method Get on the PokemonType Resource
        /// </remarks>
        /// <param name="pokemon">The pokemon object.</param>
        /// <returns></returns>
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

        /// <summary>
        /// This method allows you to update an existing Pokemon (requires a pokemonid of our Database and not the pokemon discovery number.
        /// </summary>
        /// <remarks>
        /// Pokemon number cannot be modified
        /// </remarks>
        /// <param name="pokemonId">Our database pokemonId.</param>
        /// <param name="pokemon">The pokemon object.</param>
        /// <returns></returns>
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

        /// <summary>
        /// Method that allows you to partially update a pokemon
        /// </summary>
        /// <param name="pokemonId">Our database pokemonId.</param>
        /// <param name="pokemon">The pokemon object.</param>
        /// <returns></returns>
        [HttpPatch]
        [Route("{pokemonId}")]
        public async Task<IActionResult> PatchPokemon(Guid pokemonId, PatchPokemonDTO patchedPokemon)
        {
            var apiResponse = new ApiResponse<string>();
            var pokemonEntity = _mapper.Map<Pokemon>(patchedPokemon);
            pokemonEntity.Id = pokemonId;
            var bServiceResponse = await _pokemonLibraryService.UpdatePokemon(pokemonEntity);
            apiResponse.Data = bServiceResponse.Message;
            apiResponse.Success = bServiceResponse.Successfull;
            return Ok(apiResponse);
        }

        /// <summary>
        /// Method to remove pokemons
        /// </summary>
        /// <remarks>
        /// Everybody makes mistakes and we know that you might want to register a pokemon that already exists, no hard feelings you can remove it with our database id.
        /// </remarks>
        /// <param name="pokemonId">Our database pokemonId.</param>
        /// <returns></returns>
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
