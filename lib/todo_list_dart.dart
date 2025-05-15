import 'models/lista_tarefas.dart';

void main() {
  var lista = ListaDeTarefas();
  lista.adicionarTarefa('Estudar Dart');
  lista.adicionarTarefa("Z - tarefa");
  lista.adicionarTarefa('Praticar Flutter');
  lista.adicionarTarefa('A - tarefa');

  print("Listando lista.");
  lista.listarTarefas();

  lista.removerTarefa(0);
  lista.listarTarefas();

  print("Listando lista ordenada");
  lista.ordenarPorDescricao();
  lista.listarTarefas();
}
