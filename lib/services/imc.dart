import 'dart:ffi';

import 'package:calculadora_imc/classes/pessoa.dart';

class Imc {
  double calcular(Pessoa pessoa) async {
    double imc = pessoa.getPeso() / (pessoa.getaltura() * pessoa.getaltura());

    // ignore: non_constant_identifier_names
    var IMCFORMATADO = imc.toStringAsFixed(2);

    switch (double.parse(IMCFORMATADO)) {
      case < 16:
        print("Você possui um IMC de $IMCFORMATADO");
        print("RESULTADO: MAGREZA GRAVE");
        return double.parse(IMCFORMATADO);
      case >= 16 && < 17:
        print("${pessoa.getNome()}, você possui um IMC de $IMCFORMATADO");
        print("RESULTADO: MAGREZA MODERADA");
        return double.parse(IMCFORMATADO);
      case <= 17 && < 18.5:
        print("${pessoa.getNome()},você possui um IMC de $IMCFORMATADO");
        print("RESULTADO: MAGREZA LEVE");
        return double.parse(IMCFORMATADO);
      case >= 18.5 && < 25:
        print("${pessoa.getNome()},você possui um IMC de $IMCFORMATADO");
        print("RESULTADO: SALDÁVEL");
        return double.parse(IMCFORMATADO);
      case >= 25 && < 30:
        print("${pessoa.getNome()},você possui um IMC de $IMCFORMATADO");
        print("RESULTADO: SOBRE PESO");
        return double.parse(IMCFORMATADO);
      case >= 30 && < 35:
        print("${pessoa.getNome()},você possui um IMC de $IMCFORMATADO");
        print("RESULTADO: OBESIDADE GRAU I");
        return double.parse(IMCFORMATADO);
      case >= 35 && < 40:
        print("${pessoa.getNome()},você possui um IMC de $IMCFORMATADO");
        print("RESULTADO: OBESIDADE GRAU II");
        return double.parse(IMCFORMATADO);
      case >= 40:
        print("Você possui um IMC de $IMCFORMATADO");
        print("RESULTADO: OBESIDADE GRAU III");
        return double.parse(IMCFORMATADO);
      default:
    }
  }
}
