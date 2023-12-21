import 'package:calculadora_imc/calculadora_imc.dart';
import 'package:calculadora_imc/classes/pessoa.dart';
import 'package:calculadora_imc/services/imc.dart';
import 'package:test/test.dart';

void main() {
  Imc imc = new Imc();

  test('Calculando IMC de uma pessoa com Sobre peso: ', () {
    Pessoa maria = Pessoa("Maria", 84, 1.65);
    expect(() => imc.calcular(maria), 30.85);
  });
}
