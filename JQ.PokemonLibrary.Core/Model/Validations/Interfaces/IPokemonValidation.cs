using JQ.PokemonLibrary.SharedKernel.Base;
using System;
using System.Collections.Generic;
using System.Text;

namespace JQ.PokemonLibrary.Core.Model.Validations
{
    public interface IPokemonValidation
    {
        BaseServiceResponse Validate(Pokemon pokemon);
    }
}
