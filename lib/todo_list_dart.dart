import 'package:todo_list_dart/utils.dart';

import 'models/lista_tarefas.dart';
import 'dart:async';

Future<void> execute() async {
  final lista = ListaDeTarefas();

  while (true) {
    exibirMenu();

    final opcao = lerConsole('');
    switch (opcao) {
      case '1':
        final descricao = lerConsole("Digite a descrição da tarefa:");

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
        final input = lerConsoleInt(
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
        final index = lerConsoleInt(
          "Digite o índice da tarefa a ser removida:",
        );

        if (index != null && index >= 0) {
          lista.removerTarefa(index);
        } else {
          print("Índice inválido.");
        }
        break;

      case '5':
        final index = lerConsoleInt('Digite o índice da tarefa a ser editada:');

        if (index != null && index >= 0) {
          final descricao = lerConsole("Digite a descrição da tarefa:");

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
