import 'dart:convert';

import 'models/lista_tarefas.dart';
import 'dart:io';

void execute() {
  final lista = ListaDeTarefas();

  while (true) {
    print('''
Escolha uma opção:
1. Adicionar Tarefa
2. Listar Tarefas
3. Marcar Tarefa como Concluída
4. Remover Tarefa
5. Editar Tarefa
6. Sair
''');
    var line = stdin.readLineSync(encoding: utf8);
    switch (line) {
      case '1':
        print("Digite a descrição da tarefa:");
        final descricao = stdin.readLineSync(encoding: utf8);
        if (descricao != null && descricao.isNotEmpty) {
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
        print("Digite o índice da tarefa a ser marcada como concluída");
        final input = int.tryParse(stdin.readLineSync(encoding: utf8) ?? '');
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
        print("Digite o índice da tarefa a ser removida:");
        final index = int.tryParse(stdin.readLineSync(encoding: utf8) ?? '');
        if (index != null && index >= 0) {
          lista.removerTarefa(index);
        } else {
          print("Índice inválido.");
        }
        break;

      case '5':
        print('Digite o índice da tarefa a ser editada:');
        final index = int.tryParse(stdin.readLineSync(encoding: utf8) ?? '');
        if (index != null && index >= 0) {
          print("Digite a descrição da tarefa:");
          final descricao = stdin.readLineSync(encoding: utf8);
          if (descricao != null && descricao.isNotEmpty) {
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
  }
}
