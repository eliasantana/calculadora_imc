class Pessoa {
  String _nome = "";
  double _peso = 0;
  double _altura = 0;

  Pessoa(String nome, double peso, double altura) {
    _nome = nome;
    _altura = altura;
    _peso = peso;
  }

  String getNome() {
    return _nome;
  }

  void setNome(String nome) {
    _nome = nome;
  }

  double getPeso() {
    return _peso;
  }

  void setPeso(double peso) {
    _peso = peso;
  }

  double getaltura() {
    return _altura;
  }

  void setAltura(double altura) {
    _altura = altura;
  }

  @override
  String toString() {
    return {"nome": _nome, "peso": _peso, "altura": _altura}.toString();
  }
}
