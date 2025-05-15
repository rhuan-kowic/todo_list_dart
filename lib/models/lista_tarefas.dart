import 'tarefa.dart';

class ListaDeTarefas {
  List<Tarefa> _tarefas = [];

  void adicionarTarefa(String tarefa) {
    Tarefa newTarefa = new Tarefa(descricao: tarefa);
    _tarefas.add(newTarefa);
  }

  void editarTarefa(int index, String descricao) {
    Tarefa tarefa = _tarefas[index];
    tarefa.setDescricao(descricao);
  }

  void removerTarefa(int index) {
    if (index >= 0 && index < _tarefas.length) {
      _tarefas.removeAt(index);
      print("Tarefa removida com sucesso.");
    } else {
      print("Índice inválido.");
    }
  }

  void listarTarefas() {
    if (_tarefas.isEmpty) {
      print("Nenhuma tarefa cadastrada.");
    } else {
      for (var tarefa in _tarefas) {
        print(tarefa);
      }
    }
  }

  void ordenarPorDescricao() {
    _tarefas.sort((a, b) => a.getDescricao().compareTo(b.getDescricao()));
  }
}
