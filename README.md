<p align="center"><img src="https://www.vectorlogo.zone/logos/elixir-lang/elixir-lang-ar21.svg"/></p>

## 📝 About the Project

<p aling="center">
<img aling="center"  alt="Inmana-logo" src="./git/Inmana-logo.png">
</p>

O <strong>Inmana</strong> é uma API Rest para a prevenção de perdas com gerenciamento inteligente de data de validade.

Essa é uma aplicação back-end construída na trilha de <strong>Elixir</strong> na <strong>Next Level Week</strong> evento que tem como objetivo criar projetos práticos distribuído pela [Rocketseat](https://rocketseat.com.br/).

## ⤵ Commands to start

    --Open terminal--

    #Clone repo from github
    git clone https://github.com/cesaraugustomt/Inmana_API.git

    #Entry in Inmana folder
    cd inmana

    #Install deps
    mix deps.get

    #if your postgresql is installed correctly, type
    #Create Database and migrations
    mix ecto.setup

    #Open interactive terminal
    iex.bat -S mix

    #Open Phoenix server
    mix phx.server

    #Exec test
    mix test

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

## 🐘 PostgresSQL

- [postgresql](https://www.postgresql.org/)

## Ecto

Create the database

```bash
mix ecto.create
```

Delete the database

```bash
mix ecto.drop
```

Create the migration

```bash
mix ecto.gen.migration create_trainer_table
```

Perform the migrations

```bash
mix ecto.migrate
```

## 🐦 Phoenix

start the server

```bash
mix phx.server
```

## ✔️ Deps

- [Elixir](https://elixir-lang.org/)
- [Phoenix Framework](https://www.phoenixframework.org/)
- [Dotenv](https://github.com/avdi/dotenv_elixir)
- [Bcrypt](https://github.com/riverrun/bcrypt_elixir)
- [ExCoveralls](https://github.com/parroty/excoveralls)
- [Credo](https://github.com/rrrene/credo)
- [Bamboo](https://github.com/thoughtbot/bamboo)

---

## 🔗 Project links

### Notion

- [Ambiente](https://www.notion.so/Configura-es-do-ambiente-9d73d4eefa7043f593d9c768922306ca)

## ➕ Learn more

- Official website: https://www.phoenixframework.org/
- Guides: https://hexdocs.pm/phoenix/overview.html
- Docs: https://hexdocs.pm/phoenix
- Forum: https://elixirforum.com/c/phoenix-forum
- Source: https://github.com/phoenixframework/phoenix

## 📝 License

Esse projeto está sob a licença MIT. Veja o arquivo [LICENSE](LICENSE) para mais detalhes.

---
