First of all, thank you for the opportunity you have given me; It is a huge privilege to participate in this process. Whatever the decision might be, I will never forget it.

Notes: 

While i was going through the list of pokemons i realized that the list had more than one pokemon on certain numbers, exmp:

- Charizard
- CharizardMega Charizard X
- CharizardMega Charizard Y

This made me change the list and basically i added a primary key for every record, that primary key is required for the PUT, PATCH and one the GET methods, if i would have picked the number as the primary key for the mentioned operations the action might have affected more than one record at at time.

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

- SOLID (you can find examples all over the application, but here's one of the best examples JQ.PokemonLibrary.Service/PokemonLibraryService/CommonValidations, this method uses reflection and a factory so we can make the software extensible on validation rules with more classes without modifying the code which complies with the Single Responsibility and Open-Closed Principles
- Low Coupling, all controllers and services depend on contracts that get resolved with the IOC container on the startup.cs class 

Things I would have like to add:

- CQRS to separate commands from queries
- Commands (Inserts and Updates) straight to rabbitMQ, a handler to process and send data to SQL and ElasticSearch
- Query for searching pokemon to ElasticSearch for a faster data retrieval.

