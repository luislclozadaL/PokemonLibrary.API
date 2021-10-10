using JQ.PokemonLibrary.SharedKernel.Base;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Text;

namespace JQ.PokemonLibrary.SharedKernel.Extensions
{
    public static class ValidationExtensions
    {
        public static EntityValidationResult GetValidationResults<T>(this T entity) where T : class
        {
            var fullValidationResult = new EntityValidationResult();
            var validationContext = new ValidationContext(entity);
            var validationResult = new List<ValidationResult>();

            fullValidationResult.Valid = Validator.TryValidateObject(entity, validationContext, validationResult);
            fullValidationResult.EntityValidationErrors = validationResult.ReadAndParseValidationResults();
            return fullValidationResult;
        }

        public static string ReadAndParseValidationResults(this List<ValidationResult> validations)
        {
            var sBuilder = new StringBuilder();
            var validationResponse = "";
            foreach (ValidationResult validationResult in validations)
            {
                sBuilder.Append(validationResult.ErrorMessage + ", ");
            }
            var validationResults = sBuilder.ToString();
            if (!string.IsNullOrEmpty(validationResults))
            {
                validationResponse = validationResults.Substring(0, validationResults.Length - 2);
            }
            return validationResponse;
        }

    }
}

