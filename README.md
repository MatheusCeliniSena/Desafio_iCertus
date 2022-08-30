# README

  Projeto desafio técnico iCertus de programação Back-end, utilizando a linguagem Ruby com o framework Rails, a aplicação deve listar e favoritar alguns repositórios, que serão fornecidos com a API do github

## EXECUTANDO O CÓDIGO
Clone o repositório:

```
git clone https://github.com/MatheusCeliniSena/Desafio_iCertus.git
```

Entre na pasta criada:

```
cd Desafio_iCertus
```

Execute as migrations

```
rails db:create
rails db:migrate
```

Rode os testes:

```
rspec
```

Inicie o projeto com:

```
rails server
```

## Detalhes

-   Ruby version: 3.1.2
-   Rails version: 7.0.3
-   Database: PostgreSQL
-   Gems: 'Faraday', 'rspec-rails' 

## Rotas e como usar

#### Buscar repositórios de uma das seguintes linguagens 
 - ruby
 - java
 - python
 - javascript
 - sql

(GET) https://icertusdesafio.herokuapp.com/repositories/:linguagem

#### Buscar repositório especifico
Utilize o nome do autor e do repositorio como parametro de busca

(GET) https://icertusdesafio.herokuapp.com/repository/:autor/:repositório

#### Listar favoritos

(GET) https://icertusdesafio.herokuapp.com/favorites

#### Adicionar favoritos
Utilize o nome do autor e o nome do repositorio como parametro de busca

(POST) https://icertusdesafio.herokuapp.com/favorites/rails/rails

#### Remover dos favoritos
Passe o id do favorito para remover da lista de favoritos

(DELETE) https://icertusdesafio.herokuapp.com/favorites/:id
