# Base para projetos Rails + SQLite

## Setup
| Dependência    | Versão      |
| -------------- | ----------- |
| Ruby           | **3.4.4**   |
| Sqlite3        | **3.43.2**  |

**Gems configuradas**

* [rspec](https://github.com/rspec/rspec-rails) para criação de testes
* [factory_bot](https://github.com/thoughtbot/factory_bot) para criação de models para teste
* [pry-byebug](https://github.com/deivid-rodriguez/pry-byebug) para debugging
* [dotenv](https://github.com/bkeepers/dotenv) para controle de variáveis de ambiente

## Configuração

**Variáveis de ambiente**

Use .env.example como exemplo para criar seu arquivo de configurações (`.env`)
```bash
cp .env.example .env
```

## Execução

**Via Dev Container**

Requisitos
- [Docker](https://docs.docker.com/desktop/)
- [Visual Studio Code](https://code.visualstudio.com/)
- [Visual Studio Code: Dev Containers](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers)

Comandos
- Dev Container: Reopen in Container
- No terminal do VSCode, rode: rails s
- Acesse no navegador: http://localhost:3000

**Via Github Codespaces**
- No Github, crie um codespace a partir da main branch
- No terminal do codespace, rode:
  - bundle install
  - bin/rails s
- Clique em Abrir no Navegador (Open in Browser)
