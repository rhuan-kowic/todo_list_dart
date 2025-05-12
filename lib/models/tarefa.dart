class Tarefa {
  String _tafera = "";
  bool _isCompleta = false;

  void setTafera(String tafera) {
    _tafera = tafera;
  }

  String getTarefa() {
    return _tafera;
  }

  void setIsCompleta(bool isCompleta) {
    _isCompleta = isCompleta;
  }

  bool getIsCompleta() {
    return _isCompleta;
  }

  @override
  String toString() {
    return {"Tarefa": _tafera, "IsCompleta": _isCompleta.toString()}.toString();
  }
}
