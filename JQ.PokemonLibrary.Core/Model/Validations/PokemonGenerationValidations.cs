using JQ.PokemonLibrary.SharedKernel.Base;
using System;
using System.Collections.Generic;
using System.Text;

namespace JQ.PokemonLibrary.Core.Model.Validations
{
    public class PokemonGenerationValidations : IPokemonValidation
    {
        public BaseServiceResponse Validate(Pokemon pokemon)
        {
            var baseResponse = new BaseServiceResponse() { Successfull = true };
            if (pokemon.Generation == 0 || pokemon.Generation > 7)
            {
                baseResponse.Message = "Pokemon Generation must not be 0 and we are currently finding the 7th one";
                baseResponse.Successfull = false;
                return baseResponse;
            }
            return baseResponse;
        }
    }

}
