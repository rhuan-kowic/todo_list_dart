import 'dart:convert';
import 'dart:io';

void exibirMenu() {
  print('''
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
''');
}

String lerConsole(String texto) {
  print(texto);
  var line = stdin.readLineSync(encoding: utf8);
  return line?.trim() ?? "";
}

int? lerConsoleInt(String texto) {
  return int.tryParse(lerConsole(texto));
}
