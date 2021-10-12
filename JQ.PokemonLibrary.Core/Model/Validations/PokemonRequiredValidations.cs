using JQ.PokemonLibrary.SharedKernel.Base;
using System;
using System.Collections.Generic;
using System.Text;

namespace JQ.PokemonLibrary.Core.Model.Validations
{
    public class PokemonRequiredValidations : IPokemonValidation
    {
        public BaseServiceResponse Validate(Pokemon pokemon)
        {
            var baseResponse = new BaseServiceResponse() { Successfull = true };
            if (pokemon == null)
            {
                baseResponse.Message = "Pokemon object is required";
                baseResponse.Successfull = false;
                return baseResponse;
            }
            return baseResponse;
        }
    }

}
