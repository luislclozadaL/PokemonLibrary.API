using JQ.PokemonLibrary.SharedKernel.Base;
using JQ.PokemonLibrary.SharedKernel.Extensions;
using System;
using System.Collections.Generic;
using System.Text;

namespace JQ.PokemonLibrary.Core.Model.Validations
{
    class PokemonRequiredFieldsValidations : IPokemonValidation
    {
        public BaseServiceResponse Validate(Pokemon pokemon)
        {
            var baseResponse = new BaseServiceResponse() { Successfull = true };
            var validationResult = pokemon.GetValidationResults();
            if (!validationResult.Valid)
            {
                baseResponse.Message = validationResult.EntityValidationErrors;
                baseResponse.Successfull = false;
                return baseResponse;
            }
            return baseResponse;
        }
    }
}
