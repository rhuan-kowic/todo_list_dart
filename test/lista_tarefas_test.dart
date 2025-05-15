import 'package:test/test.dart';
import 'package:todo_list_dart/models/lista_tarefas.dart';

void main() {
  group('ListaDeTarefas', () {
    // Teste 1: Adicionar uma tarefa
    test('Deve adicionar uma tarefa corretamente', () {
      var lista = ListaDeTarefas();
      lista.adicionarTarefa("Comprar leite");

      expect(lista.getListaDeTarefas().length, equals(1));
      expect(
        lista.getListaDeTarefas()[0].getDescricao(),
        equals("Comprar leite"),
      );
    });

    // Teste 2: Editar uma tarefa
    test('Deve editar a descrição de uma tarefa', () {
      var lista = ListaDeTarefas();
      lista.adicionarTarefa("Comprar leite");
      lista.editarTarefa(0, "Comprar pão");

      expect(
        lista.getListaDeTarefas()[0].getDescricao(),
        equals("Comprar pão"),
      );
    });

    // Teste 3: Remover uma tarefa
    test('Deve remover uma tarefa corretamente', () {
      var lista = ListaDeTarefas();
      lista.adicionarTarefa("Comprar leite");
      lista.adicionarTarefa("Comprar pão");

      lista.removerTarefa(0);

      expect(lista.getListaDeTarefas().length, equals(1));
      expect(
        lista.getListaDeTarefas()[0].getDescricao(),
        equals("Comprar pão"),
      );
    });

    // Teste 4: Listar tarefas
    test('Deve listar as tarefas corretamente', () {
      var lista = ListaDeTarefas();
      lista.adicionarTarefa("Comprar leite");
      lista.adicionarTarefa("Comprar pão");

      // Usando a captura da saída do print
      var tarefasListadas = lista.getListaDeTarefas();
      expect(tarefasListadas.length, equals(2));
      expect(tarefasListadas[0].getDescricao(), equals("Comprar leite"));
      expect(tarefasListadas[1].getDescricao(), equals("Comprar pão"));
    });

    // Teste 5: Ordenar tarefas por descrição
    test('Deve ordenar as tarefas por descrição', () {
      var lista = ListaDeTarefas();
      lista.adicionarTarefa("Comprar pão");
      lista.adicionarTarefa("Comprar leite");
      lista.adicionarTarefa("Limpar a casa");

      lista.ordenarPorDescricao();

      expect(
        lista.getListaDeTarefas()[0].getDescricao(),
        equals("Comprar leite"),
      );
      expect(
        lista.getListaDeTarefas()[1].getDescricao(),
        equals("Comprar pão"),
      );
      expect(
        lista.getListaDeTarefas()[2].getDescricao(),
        equals("Limpar a casa"),
      );
    });
  });
}
