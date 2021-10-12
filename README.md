First of all, thank you for the opportunity you have given me; It is a huge privilege to participate in this process. Whatever the decision might be, I will never forget it.

You can find the hosted API on the following URL:

https://test.pcp.cloud:500/Swagger/index.html

For easier integration with postman, the swagger JSON can be found on the following URL:

https://test.pcp.cloud:500/swagger/v1/swagger.json

**Important:** 

While I was going through the list of pokemons, I realized that the list had more than one pokemon on specific numbers, for example:

- Charizard
- CharizardMega Charizard X
- CharizardMega Charizard Y

This made me incorporate a different primary key for every record. This primary key is required for the PUT, PATCH, and one of the GET methods; if I had picked the number as the primary key for the mentioned operations, the action might have affected more than one record at a time.

**How is the project organized:**

- _Database
  - **JQ.PokemonLibrary.DB** - Project created to manage the Database structure (the script for database creation with the data can be found under the Scripts folder)
- Catalogs
  - Infrastructure
    - **JQ.PokemonLibrary.Catalogs.Data** - Project tightly coupled to SQL Server and Entity Framework for catalogs data management
  - **JQ.PokemonLibrary.Catalogs.Core** - Project where all contracts, models, and some behaviors reside, this is the main dll in which the catalogs aggregate is built on
  - **JQ.PokemonLibrary.Catalogs.Service** - Project where all business rules are located, and it's the layer that communicates catalogs with the controllers
- Library
  - Infrastructure
    - **JQ.PokemonLibrary.Data** - Project tightly coupled to SQL Server and Entity Framework for the Pokemon data management (.Net Standard 2.1)
  - **JQ.PokemonLibrary.Core** - Project where all contracts, models, and some behaviors reside; this is the main dll on which the Pokemon management aggregate is built. (.Net Standard 2.1)
  - **JQ.PokemonLibrary.Service** - Project where all business rules for pokemon management are located, and it's the layer that communicates catalogs with the controllers. (.Net Standard 2.1)
  - **JQ.PokemonLibrary.Service.UnitTests** - Project with basic unit test operations for the business layer of the pokemon library (NUnit)
- **JQ.PokemonLibrary.API** - The actual API with all controllers that exposes all resources (.NET 5.0)
- **JQ.PokemonLibrary.SharedKernel** - Project with helpers and common classes used across the project.

The Pokemon Library API has basic CRUD operations as per requirement, but on the inside, I applied (to the best of my knowledge) best practices and coding patterns; more details next:

Tech Stack:
- .NET 5.0
- EntityFrameworkCore
- NUnit
- Automapper
- Swagger 
- SQL Server

Design Patterns

- Dependency Injection
- Inversion of control
- Reflection
- Factory
- Repository
- It also follows the Onion Architecture, in which the outermost layer for the Library and Catalogs can be swapped with any Database technology without affecting the main layers of the project ( JQ.PokemonLibrary.Catalogs.Data and JQ.PokemonLibrary.Data )

Principles:

- SOLID (you can find examples all over the application, but here's one of the best examples JQ.PokemonLibrary.Service/PokemonLibraryService/CommonValidations uses reflection and factory to make the software extensible on validation rules by adding classes without modifying the code, which follows the Single Responsibility and Open-Closed Principles.
- Low Coupling, all controllers and services depend on contracts that get resolved with the IOC container on the startup.cs class.

Things I would have like to add:

- CQRS to separate commands from queries.
- Commands (Inserts and Updates) straight to rabbitMQ, a handler to process and send data to SQL and ElasticSearch.
- Query for searching pokemon to ElasticSearch for a faster data retrieval.
