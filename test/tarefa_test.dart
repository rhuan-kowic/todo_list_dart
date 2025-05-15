import 'package:test/test.dart';
import 'package:todo_list_dart/models/tarefa.dart';

void main() {
  group('Tarefa', () {
    // Teste 1: Verificar a criação de uma tarefa
    test('Deve criar uma tarefa com a descrição correta', () {
      var tarefa = Tarefa(descricao: "Comprar leite");
      expect(tarefa.getDescricao(), equals("Comprar leite"));
      expect(
        tarefa.toString(),
        equals('Tarefa: Comprar leite | Concluída: Não'),
      );
    });

    // Teste 2: Marcar tarefa como concluída
    test('Deve marcar uma tarefa como concluída', () {
      var tarefa = Tarefa(descricao: "Comprar leite");
      tarefa.marcarComoConcluida();
      expect(
        tarefa.toString(),
        equals('Tarefa: Comprar leite | Concluída: Sim'),
      );
    });

    // Teste 3: Marcar tarefa como pendente
    test('Deve marcar uma tarefa como pendente', () {
      var tarefa = Tarefa(descricao: "Comprar leite", concluida: true);
      tarefa.marcarComoPendente();
      expect(
        tarefa.toString(),
        equals('Tarefa: Comprar leite | Concluída: Não'),
      );
    });

    // Teste 4: Alterar a descrição de uma tarefa
    test('Deve alterar a descrição da tarefa', () {
      var tarefa = Tarefa(descricao: "Comprar leite");
      tarefa.setDescricao("Comprar pão");
      expect(tarefa.getDescricao(), equals("Comprar pão"));
      expect(tarefa.toString(), equals('Tarefa: Comprar pão | Concluída: Não'));
    });

    // Teste 5: Criar tarefa já concluída
    test('Deve criar uma tarefa já concluída', () {
      var tarefa = Tarefa(descricao: "Estudar Dart", concluida: true);
      expect(
        tarefa.toString(),
        equals('Tarefa: Estudar Dart | Concluída: Sim'),
      );
    });
  });
}
