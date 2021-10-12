using JQ.PokemonLibrary.API.Base;
using JQ.PokemonLibrary.Catalogs.Core.Model;
using JQ.PokemonLibrary.Catalogs.Core.Repositories;
using JQ.PokemonLibrary.Catalogs.Core.Services;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Threading.Tasks;

namespace JQ.PokemonLibrary.API.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class PokemonTypeController : ControllerBase
    {
        private IPokemonLibraryCatalogsService _pokemonCatalogsService;

        public PokemonTypeController(IPokemonLibraryCatalogsService pokemonCatalogsService)
        {
            _pokemonCatalogsService = pokemonCatalogsService;
        }

        /// <summary>
        /// Catalog for pokemon types
        /// </summary>
        /// <remarks>
        /// This method is usefull for the types in the pokemon object for the create, update and patch.
        /// </remarks>
        /// <returns></returns>
        [ProducesResponseType(typeof(ApiResponse<IList<PokemonType>>), (int)HttpStatusCode.OK)]
        [ProducesResponseType(typeof(ApiResponse<string>), (int)HttpStatusCode.InternalServerError)]
        [HttpGet]
        public async Task<IActionResult> GetPokemonTypes()
        {
            var apiResponse = new ApiResponse<List<PokemonType>>();
            var serviceResponse = await _pokemonCatalogsService.GetPokemonTypes();
            apiResponse.Data = serviceResponse.PokemonTypes;
            apiResponse.Success = serviceResponse.Successfull;
            return Ok(apiResponse);
        }
    }
}
