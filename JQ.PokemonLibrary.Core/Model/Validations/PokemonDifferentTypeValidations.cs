using JQ.PokemonLibrary.SharedKernel.Base;

namespace JQ.PokemonLibrary.Core.Model.Validations
{
    public class PokemonDifferentTypeValidations : IPokemonValidation
    {
        public BaseServiceResponse Validate(Pokemon pokemon)
        {
            var baseResponse = new BaseServiceResponse() { Successfull = true };
            if (pokemon.Type2 != null && pokemon.Type1 == 0)
            {
                baseResponse.Message = "Pokemon type1 is required";
                baseResponse.Successfull = false;
                return baseResponse;
            }
            return baseResponse;
        }
    }


}
