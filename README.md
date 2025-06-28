# Projeto de Mentoria - Rails Girls São Paulo

## Descrição

Nesta edição do Rails Girls São Paulo, vamos criar um projeto de mentoria. Nesse projeto, queremos viabilizar a conexão entre pessoas que querem:

* dar mentoria (mentoras)
* receber mentoria (mentorandas)

A ideia maior é que possamos ter uma listagem de mentoras, cada uma com suas habilidades; que seja possível buscar mentoras por essas habilidades; e, por fim, que mentoradas possam escolher mentoras que façam sentido para elas.

## Durante o evento
As participantes do Rails Girls SP 2025 serão divididas em equipes de até 5 pessoas (participantes e mentoras). A ideia é que vocês evoluam em time o máximo possível desse projeto.

Sua equipe pode se organizar como achar melhor, mas sugerimos que façam alguma divisão de tarefas que podem ser paralelizáveis e pareamentos para as que não podem.

O objetivo maior é aprender, então terminar o projeto é só um detalhe. Portanto, escrevam testes, inventem novas funcionalidades e, **mais importante de tudo, se divirtam**!

## Desafios

### >> Desafio 0: Explorar
Dêem uma fuçada no código, e rodem a aplicação. Já deixamos o CRUD completo de mentoras pronto pra vocês! _Será que vocês conseguem perceber algum bugzinho?_

### >> Desafio 1: Gestão de mentoradas
Já temos a habilidade de cadastrar mentoras, mas precisamos também das pessoas mentoradas.

Esse desafio consiste em páginas para **gestão de cadastro de mentoradas**: precisamos criar novas, listá-las, editá-as, deletá-las e ver detalhes de uma mentorada em específico.

Sugerimos que as mentoradas (`Mentee` é um bom nome) tenham: nome, cargo atual, empresa atual, email, linkedin e mini-bio.

| Listar    | Criar      | Mostrar      | Editar      |
| --------- | ---------- |------------- | ----------- |
| <img width="572" alt="image" src="https://github.com/user-attachments/assets/ef150e6a-94a3-4739-aca9-59b69ac39411" /> | <img width="572" alt="image" src="https://github.com/user-attachments/assets/f939def5-abb6-4dfc-8671-ce01f02ce578" /> | <img width="572" alt="image" src="https://github.com/user-attachments/assets/d418790c-8739-4109-9d5d-8dd2e27b9177" /> | <img width="572" alt="image" src="https://github.com/user-attachments/assets/8cec01e7-1a25-432e-bb8b-a49bfd3120d7" /> |
> deleção não tem imagem, mas tem links para essa ação em algumas das telas

### >> Desafio 2: Conectar mentoras e mentoradas
Não bastar ter cadastro de mentoras e mentoradas, né? Uma forma de conectá-las é mais do que necessária.

Nesse desafio, precisamos criar duas novas funcionalidades:
1. Buscar mentoras por habilidades: a partir de uma habilidade X, devemos buscar as mentoras que tem aquela habilidade, pois essa é a única forma de escolher uma mentora

     <img width="350" alt="image" src="https://github.com/user-attachments/assets/c5c7fc1d-97d9-4bd5-acae-0109d29e2d02" />
1. Conectar mentoras e mentoradas: após a busca, devemos conseguir selecionar uma mentora e uma mentorada e conectá-las. (Dica: aqui teremos um relacionamento _many-to-many_)

     <img width="350" alt="image" src="https://github.com/user-attachments/assets/b1ca512c-aa07-41b1-8839-5480d76c125b" />
     <img width="350" alt="image" src="https://github.com/user-attachments/assets/3dd4da77-2f72-41ee-b909-45b8e52761a1" />


### >> Desafio 3: Login para mentoradas
Sabe a página que você acabou de fazer para conectar mentoras e mentoradas? E se a pessoa mentorada estivesse logada? A ideia desse próximo desafio é que você consiga fazer isso!

Imagine que o cadastro de mentoras seja feito por um admin (desafio extra, não precisa se preocupar com isso agora), e que o cadastro da mentorada seja feito por ela mesmo, através de um login. Nesse caso, para uma mentorada selecionar uma mentora, a página do desafio anterior poderia ser apenas a seleção de mentora, com a seleção de mentorada sendo feita automáticamente através da informação do login.

  <img width="350" alt="image" src="https://github.com/user-attachments/assets/be7d824b-5d96-475a-bd39-68283376055d" />
  <img width="350" alt="image" src="https://github.com/user-attachments/assets/3dd4da77-2f72-41ee-b909-45b8e52761a1" />


### >> Desafio 4: CRUD de habilidades
Atualmente, as habilidades de uma mentora são um texto corrido (uma string). Seria muito melhor organizado se tivéssemos de fato uma lista de habilidades para elas escolherem (ou criarem novas, caso ainda não exista), não acha?

  <img width="350" alt="image" src="https://github.com/user-attachments/assets/d77b6b95-33aa-454a-88aa-034925faf38c" />


### >> Desafios extras
Esse projeto pode ir longe!!! Além dos desafios propostos, ainda podemos:
- Ter login para mentoras, que se cadastram com suas habilidades e gerenciam as suas mentoradas
- Ter um painel adminstrativo (pois quando mentoras e mentoradas tem visões específicas, precisamos de algo operacional para gerenciar ambas)
- Permitir que mentora e mentorada sejam apenas papeis de uma pessoa, para que mentoras possam ser mentoradas e mentoradas possam ser mentoras
- etc, etc, etc


### >> Bônus: TESTEEESSSSS
Que tal adicionar testes pra tudo que fizemos? Melhor ainda se for enquanto estiver fazendo cada desafio


----

# Configuração

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

No momento, não existe nada nesses arquivos, então não precisa se preocupar!

## Execução a aplicação

Escolham uma pessoa do grupo para [criar um fork](https://github.com/RailsGirls-SP/mentorship/fork) desse repositório; criem o fork e adicionem as demais pessoas do grupo ao repositório criado (dentro do git, vá em Settings > Collaborators and teams).

As demais pessoas do grupo podem acessar o projeto:
- clonando o repo criado em seu próprio computador, caso for usar o VS Code ou similar
- usar o Github Codespaces diretamente do browser


### Via Dev Container (VS Code)

**Requisitos**
- [Docker](https://docs.docker.com/desktop/)
- [Visual Studio Code](https://code.visualstudio.com/)
- [Visual Studio Code: Dev Containers](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers)

**Comandos**
- Clone o repositório em sua máquina
- Copie o `.devcontainer_example` para `.devcontainer`
  - `cp -r .devcontainer_example .devcontainer`
- Dev Container: Reopen in Container
- No terminal do VSCode, rode:
  - bundle install
  - bin/dev
- Acesse no navegador: http://localhost:3000
- Para atualizar o container: Dev Container: Rebuild Container

### Via Github Codespaces
- No Github, [crie um codespace](https://github.com/codespaces) a partir da main branch
- No terminal do codespace, rode:
  - bundle install
  - bin/dev
- Clique em Abrir no Navegador (Open in Browser)

---
Independentemente do caminho escolhido, para executar os testes da aplicação, rode `rspec`; Para executar o lint, rode `rubocop` ou `rubocop --fix`.
