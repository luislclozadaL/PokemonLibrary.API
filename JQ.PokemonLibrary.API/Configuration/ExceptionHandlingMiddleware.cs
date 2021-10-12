using JQ.PokemonLibrary.API.Base;
using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Diagnostics;
using Microsoft.AspNetCore.Http;
using Microsoft.Extensions.Logging;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Net;
using System.Text.Json;
using System.Threading.Tasks;

namespace JQ.PokemonLibrary.API.Configuration
{
    public class ExceptionHandlingMiddleware 
    {
        private readonly RequestDelegate _next;

        public ExceptionHandlingMiddleware(RequestDelegate next)
        {
            _next = next;
        }

        public async Task Invoke(HttpContext context)
        {
            try
            {
                await _next(context);
            }
            catch (Exception error)
            {
                await HandleExceptionAsync(context, error);
            }
        }

        private static Task HandleExceptionAsync(HttpContext context, Exception ex)
        {
            HttpStatusCode code = HttpStatusCode.InternalServerError;
            context.Response.ContentType = "application/json";
            context.Response.StatusCode = (int)code;

            var response = new ApiResponse<string>
            {
                Data = "An error has ocurred and our pokemon research team has been notified, we'll get back to you shortly",
                Exception = ex.Message + "|" + ex.InnerException,
                Success = false
            };
            var result = JsonConvert.SerializeObject(response);
            return context.Response.WriteAsync(result);
        }
    }
}
