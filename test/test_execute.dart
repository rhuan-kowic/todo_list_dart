import 'dart:async';
import 'package:test/test.dart';
import 'package:todo_list_dart/models/lista_tarefas.dart';

// Função de simulação de entradas no console
String lerConsoleSimulado(String prompt) {
  // Simula entradas para cada interação no menu
  if (prompt == 'Digite a descrição da tarefa:') {
    return 'Comprar leite'; // Adicionar tarefa
  }
  if (prompt == 'Digite o índice da tarefa a ser marcada como concluída') {
    return '0'; // Marcar tarefa como concluída (índice 0)
  }
  if (prompt == 'Digite o índice da tarefa a ser removida:') {
    return '0'; // Remover tarefa (índice 0)
  }
  if (prompt == 'Digite a descrição da tarefa:') {
    return 'Comprar pão'; // Editar descrição da tarefa
  }
  return ''; // Default para outros casos
}

int lerConsoleIntSimulado(String prompt) {
  // Simula a leitura de um índice inteiro
  if (prompt.contains('marcada como concluída')) {
    return 0; // Marcar tarefa 0 como concluída
  }
  if (prompt.contains('removida')) {
    return 0; // Remover tarefa no índice 0
  }
  return -1; // Default para outros casos
}

// A função que simula o fluxo do menu com as entradas predefinidas
Future<void> executeSimulado() async {
  final lista = ListaDeTarefas();

  while (true) {
    // Exibe o menu (não simulado)
    print('Escolha uma opção:');
    print('1. Adicionar Tarefa');
    print('2. Listar Tarefas');
    print('3. Marcar Tarefa como Concluída');
    print('4. Remover Tarefa');
    print('5. Editar Tarefa');
    print('6. Sair');
    print('Escolha uma opção:');

    // Simula a entrada do menu
    final opcao = '1'; // Simula a escolha do menu como '1' (Adicionar Tarefa)
    switch (opcao) {
      case '1':
        final descricao = lerConsoleSimulado("Digite a descrição da tarefa:");

        if (descricao.isNotEmpty) {
          lista.adicionarTarefa(descricao);
        } else {
          print('Descrição inválida.');
        }
        break;

      case '2':
        print("Listar Tarefas");
        lista.listarTarefas();
        break;

      case '3':
        final input = lerConsoleIntSimulado(
          "Digite o índice da tarefa a ser marcada como concluída",
        );

        if (input != null) {
          final index = input;
          if (index >= 0 && index < lista.getListaDeTarefas().length) {
            lista.getListaDeTarefas()[index].marcarComoConcluida();
          } else {
            print("Índice inválido.");
          }
        }
        break;

      case '4':
        final index = lerConsoleIntSimulado(
          "Digite o índice da tarefa a ser removida:",
        );

        if (index != null && index >= 0) {
          lista.removerTarefa(index);
        } else {
          print("Índice inválido.");
        }
        break;

      case '5':
        final index = lerConsoleIntSimulado(
          'Digite o índice da tarefa a ser editada:',
        );

        if (index != null && index >= 0) {
          final descricao = lerConsoleSimulado("Digite a descrição da tarefa:");

          if (descricao.isNotEmpty) {
            lista.editarTarefa(index, descricao);
            print('Tarefa editada com sucesso!');
          } else {
            print('Descrição inválida.');
          }
        } else {
          print("Índice inválido.");
        }
        break;

      case '6':
        print('Saindo...');
        return;

      default:
        print('Opção inválida. Tente novamente.');
    }

    await Future.delayed(Duration(seconds: 2));
  }
}

void main() {
  test(
    'Execute deve adicionar, marcar como concluída, remover e editar tarefas corretamente',
    () async {
      // Criar uma instância da lista de tarefas
      final lista = ListaDeTarefas();

      // Simula a execução da função
      await executeSimulado();

      // Verificar o comportamento esperado

      // Verificar que a tarefa foi adicionada
      expect(lista.getListaDeTarefas().length, equals(1));
      expect(
        lista.getListaDeTarefas()[0].getDescricao(),
        equals('Comprar leite'),
      );

      // Verificar que a tarefa foi marcada como concluída
      lista.getListaDeTarefas()[0].marcarComoConcluida();
      expect(
        lista.getListaDeTarefas()[0].toString(),
        equals('Tarefa: Comprar leite | Concluída: Sim'),
      );

      // Verificar que a tarefa foi removida
      lista.removerTarefa(0);
      expect(lista.getListaDeTarefas().isEmpty, equals(true));

      // Adicionar novamente a tarefa e editar
      lista.adicionarTarefa('Comprar leite');
      lista.editarTarefa(0, 'Comprar pão');
      expect(
        lista.getListaDeTarefas()[0].getDescricao(),
        equals('Comprar pão'),
      );
    },
  );
}
