using JQ.PokemonLibrary.SharedKernel.Base;
using System;
using System.Collections.Generic;
using System.Text;

namespace JQ.PokemonLibrary.Core.Model.Validations
{
    public class PokemonStatsValidations : IPokemonValidation
    {
        public BaseServiceResponse Validate(Pokemon pokemon)
        {
            var baseResponse = new BaseServiceResponse() { Successfull = true };
            if (pokemon.HP == 0 || pokemon.Attack == 0 || pokemon.Defense == 0 || pokemon.SpecialMoveAttack == 0 || pokemon.SpecialMoveDefense == 0)
            {
                baseResponse.Message = "Pokemon stats must not be 0";
                baseResponse.Successfull = false;
                return baseResponse;
            }
            return baseResponse;
        }
    }

}
