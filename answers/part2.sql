# All the types of pokemon that a pokemon can have
SELECT name FROM types;

#Name of pokemon with id 45
SELECT name FROM pokemons WHERE id = 45;

#Total Amount of pokemon
SELECT COUNT(*) FROM pokemons;

#Amount of types of pokemon
SELECT COUNT(*) FROM types;

#Amount of pokemon with secondary type
SELECT COUNT(*) FROM pokemons WHERE secondary_type IS NOT NULL;