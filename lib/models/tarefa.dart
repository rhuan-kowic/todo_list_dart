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

  void setDescricao(String descricao) {
    _descricao = descricao;
  }

  String getDescricao() {
    return _descricao;
  }

  @override
  String toString() {
    return 'Tarefa: $_descricao | Concluída: ${_concluida ? "Sim" : "Não"}';
  }
}
