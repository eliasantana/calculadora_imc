import 'package:calculadora_imc/classes/pessoa.dart';
import 'package:calculadora_imc/services/imc.dart';

void main(List<String> arguments) {
  Pessoa maria = Pessoa("Maria", 64, 1.70);
  Pessoa madally = Pessoa("Madally", 84, 1.65);
  Pessoa elias = Pessoa("Elias", 103, 1.70);
  Pessoa renato = Pessoa("Renato", 82, 1.70);

  Imc imc = new Imc();
  imc.calcular(maria);
  imc.calcular(madally);
  imc.calcular(elias);
  imc.calcular(renato);
}
