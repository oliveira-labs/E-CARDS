# E-CARDS

Este projeto é um banco de dados PostgreSQL projetado para gerenciar uma coleção de cartas de Pokémon TCG (Trading Card Game).

## Visão Geral

O objetivo deste projeto é fornecer uma estrutura de banco de dados para armazenar e consultar informações sobre cartas de Pokémon. Isso inclui detalhes como nome da carta, pontos de vida (HP), ataques, fraquezas, a coleção a que pertence e muito mais.

## Estrutura do Banco de Dados

O banco de dados consiste nas seguintes tabelas principais:

*   `tbl_collections`: Armazena informações sobre as coleções de cartas (por exemplo, Base Set, Jungle).
*   `tbl_types`: Armazena os tipos de Pokémon (por exemplo, Fogo, Água, Grama).
*   `tbl_stages`: Armazena os estágios de evolução dos Pokémon (por exemplo, Básico, Estágio 1).
*   `tbl_cards`: A tabela principal que armazena os detalhes de cada carta de Pokémon, com relações para as tabelas acima.

## Scripts

O diretório `db_scripts` contém os seguintes scripts SQL:

*   **`tables/`**: Scripts para criar as tabelas do banco de dados.
*   **`seeds/`**: Scripts para popular o banco de dados com dados iniciais, incluindo algumas cartas e coleções de exemplo.
*   **`views/`**: Scripts para criar views que facilitam a consulta dos dados. A view `vw_cards_detalhado` fornece uma visão detalhada de cada carta, juntando informações de todas as tabelas.
*   **`migration/`**: Contém um script de migração que combina a criação de tabelas e a inserção de dados iniciais.

## Como Usar

Para utilizar este projeto, você pode executar os scripts SQL no diretório `db_scripts` em um banco de dados PostgreSQL. A ordem recomendada é:

1.  Executar os scripts em `tables` para criar a estrutura do banco de dados.
2.  Executar os scripts em `seeds` para popular o banco de dados com dados de exemplo.

Alternativamente, você pode usar o script `migration/001_migration__seeds.sql` para executar ambas as etapas de uma só vez.

# Dica, para consultas em grandes bases evite usar * nas consultas SQL, faça a chamada nomeando as colunas pois isso torna o codigo mais performatico.
