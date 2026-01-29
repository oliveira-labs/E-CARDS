-- Seed collections
INSERT INTO tbl_collections (collectionsSetName, releaseDate, totalCardsInCollection)
VALUES
('Base Set', '1999-01-09', 102),
('Jungle', '1999-06-16', 64),
('Fossil', '1999-10-10', 62);

-- Seed types
INSERT INTO tbl_types (typeName)
VALUES
('Grass'),
('Fire'),
('Water'),
('Lightning'),
('Psychic'),
('Fighting'),
('Colorless');

-- Seed stages
INSERT INTO tbl_stages (stageName)
VALUES
('Basic'),
('Stage 1'),
('Stage 2');

-- Seed cards
INSERT INTO tbl_cards (hp, name, info, attack, damage, weak, resis, retreat, cardNumberInCollection, collection_id, type_id, stage_id)
VALUES
(40, 'Bulbasaur', 'Seed Pokémon', 'Leech Seed', '20', 'Fire', 'None', '1 Colorless', 44, 1, 1, 1),
(50, 'Charmander', 'Lizard Pokémon', 'Ember', '30', 'Water', 'None', '1 Colorless', 46, 1, 2, 1),
(50, 'Squirtle', 'Tiny Turtle Pokémon', 'Bubble', '10', 'Lightning', 'None', '1 Colorless', 63, 1, 3, 1),
(60, 'Pikachu', 'Mouse Pokémon', 'Thunder Jolt', '30', 'Fighting', 'None', '1 Colorless', 58, 1, 4, 1),
(60, 'Jigglypuff', 'Balloon Pokémon', 'Lullaby', '—', 'Fighting', 'Psychic', '1 Colorless', 54, 2, 7, 1),
(90, 'Scyther', 'Mantis Pokémon', 'Slash', '30', 'Fire', 'Fighting', '0', 10, 2, 1, 1),
(100, 'Gengar', 'Shadow Pokémon', 'Nightmare', '30', 'Psychic', 'None', '2 Colorless', 5, 3, 5, 2);
