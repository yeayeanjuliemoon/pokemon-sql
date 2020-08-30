#Each pokemon's primary type
SELECT pokemons.name, types.name FROM pokemons INNER JOIN types ON pokemons.primary_type = types.id; 

#Ruffelt's secondary type
SELECT pokemons.name, types.name FROM pokemons INNER JOIN types ON pokemons.secondary_type = types.id WHERE pokemons.name = 'Rufflet';

#Names of pokemon that belong to trainer with trainerID 303
SELECT pokemons.name, pokemon_trainer.trainerID FROM pokemons INNER JOIN pokemon_trainer ON pokemons.id = pokemon_trainer.pokemon_id WHERE pokemon_trainer.trainerID = 303;

#Amount of pokemon with secondary type Poison
SELECT COUNT(*) FROM pokemons INNER JOIN types ON pokemons.secondary_type = types.id WHERE types.name = 'Poison';

#All the primary types and amount of pokemon that have that type
SELECT types.name, COUNT(*) FROM pokemons INNER JOIN types ON pokemons.primary_type = types.id GROUP BY pokemons.primary_type;

#Amount of pokemon at level 100 that each trainer who has at least one level 100 has
SELECT COUNT(*) FROM pokemon_trainer WHERE pokemon_trainer.pokelevel = 100 GROUP BY pokemon_trainer.trainerID HAVING COUNT(*) > 1;

#Amount of pokemon that only belong to one trainer and no other
SELECT COUNT(1) AS "pokemon with one trainer" FROM (SELECT pokemons.name, COUNT(pokemon_trainer.trainerID) FROM pokemons JOIN pokemon_trainer ON pokemons.id = pokemon_trainer.pokemon_id GROUP BY pokemons.name HAVING COUNT(pokemon_trainer.trainerID) = 1) a; 
