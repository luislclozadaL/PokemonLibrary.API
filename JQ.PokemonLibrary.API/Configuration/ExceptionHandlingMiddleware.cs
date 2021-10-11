using JQ.PokemonLibrary.API.Base;
using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Diagnostics;
using Microsoft.AspNetCore.Http;
using Microsoft.Extensions.Logging;
using System;
using System.Collections.Generic;
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
                var response = context.Response;
                response.ContentType = "application/json";
                var result = JsonSerializer.Serialize(new ApiResponse<string>{  Data = "An error has ocurred and our pokemon research team has been notified, we;ll get back to you shortly", Exception = error, Success = false });
                await response.WriteAsync(result);
            }
        }
    }
}
