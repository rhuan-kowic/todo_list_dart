class Tarefa {
  String _descricao = "";
  bool _concluida = false;

  Tarefa({required descricao, concluida = false}) {
    _descricao = descricao;
    _concluida = concluida;
  }

  void marcarComoConcluida() {
    _concluida = true;
  }

  void marcarComoPendente() {
    _concluida = false;
  }

  @override
  String toString() {
    return {
      "Tarefa": _descricao,
      "IsCompleta": "${_concluida ? "Sim" : "Não"}",
    }.toString();
  }
}
