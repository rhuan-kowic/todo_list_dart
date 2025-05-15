# Todo List Dart

Este é um projeto simples de **Todo List** desenvolvido em Dart. Ele permite ao usuário adicionar, listar, editar, remover e marcar tarefas como concluídas através de um menu interativo no console.

## Funcionalidades

O aplicativo oferece as seguintes funcionalidades:

1. **Adicionar Tarefa**: Permite ao usuário adicionar uma nova tarefa à lista.
2. **Listar Tarefas**: Exibe todas as tarefas cadastradas, mostrando a descrição e se estão ou não concluídas.
3. **Marcar Tarefa como Concluída**: Permite ao usuário marcar uma tarefa como concluída.
4. **Remover Tarefa**: Permite ao usuário remover uma tarefa da lista.
5. **Editar Tarefa**: Permite ao usuário editar a descrição de uma tarefa existente.
6. **Sair**: Encerra a aplicação.

## Requisitos

* Dart SDK versão 2.12 ou superior.

## Instalação

1. Clone o repositório para o seu ambiente local:

   ```bash
   git clone https://github.com/rhuan-kowic/todo_list_dart.git
   ```

2. Navegue até a pasta do projeto:

   ```bash
   cd todo-list-dart
   ```

3. Instale as dependências:

   ```bash
   dart pub get
   ```

## Como Executar

1. Para rodar a aplicação no terminal, execute o seguinte comando:

   ```bash
   dart run
   ```

2. O menu será exibido, e você pode interagir com as opções para adicionar, listar, editar ou remover tarefas. A interação será feita por meio do console.

   Exemplo de interação no terminal:

   ```
    ***********************************************
    *               Lista de Tarefas            *
    ***********************************************
    * 1. Adicionar Tarefa                       *
    * 2. Listar Tarefas                         *
    * 3. Marcar Tarefa como Concluída           *
    * 4. Remover Tarefa                         *
    * 5. Editar Tarefa                          *
    * 6. Sair                                   *
    ***********************************************
   ```

   O programa espera por uma entrada do usuário, e você pode seguir as instruções do menu para executar diferentes ações.

## Testes

Este projeto inclui testes para garantir que a funcionalidade das tarefas esteja funcionando corretamente. Para rodar os testes, execute o seguinte comando:

```bash
dart test
```

Os testes são feitos usando o framework **test** do Dart e validam as principais funcionalidades, como adicionar, editar, remover e concluir tarefas.

### Funções no código

1. **`exibirMenu()`**: Exibe o menu de opções para o usuário no console.
2. **`lerConsole()`**: Lê a entrada do usuário no console.
3. **`lerConsoleInt()`**: Lê um valor inteiro do console.
4. **`execute()`**: Função principal que executa o loop do menu interativo.

## Licença

Este projeto está licenciado sob a **MIT License** - veja o arquivo [LICENSE](LICENSE) para mais detalhes.


