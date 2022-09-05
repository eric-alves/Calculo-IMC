import 'dart:math';

class CalculadoraIMC {
  CalculadoraIMC({this.peso, this.altura});

  final int? peso;
  final int? altura;
  late double _imc;

  String calcularIMC() {
    _imc = peso! / pow(altura! / 100, 2);
    return _imc.toStringAsFixed(1);
  }

  String obterResultado() {
    if (_imc >= 40) {
      return 'Obesidade grau III (morbida)';
    } else if (_imc >= 35 && _imc < 40) {
      return 'Obesidade grau II (severa)';
    } else if (_imc >= 30 && _imc < 35) {
      return 'Obesidade grau I';
    } else if (_imc >= 25 && _imc < 30) {
      return 'Sobrepeso';
    } else if (_imc >= 18.6 && _imc < 25) {
      return 'Saudável';
    } else {
      return 'Abaixo do peso';
    }
  }

  String obterInterpretacao() {
    if (_imc >= 40) {
      return 'A obesidade mórbida é uma forma de acúmulo excessivo de gordura no corpo';
    } else if (_imc >= 35 && _imc < 40) {
      return 'A obesidade severa é uma forma de acúmulo excessivo de gordura no corpo';
    } else if (_imc >= 30 && _imc < 35) {
      return 'Vecê pode ter um distúrbio que envolve excesso de gordura corporal, aumentando o risco de problemas de saúde.';
    } else if (_imc >= 25 && _imc < 30) {
      return 'Você está pesando mais do que o que é considerado saudável.';
    } else if (_imc >= 18.6 && _imc < 25) {
      return 'O seu peso está o ideal!!!';
    } else {
      return 'Você pode estar com falta de nutrientes suficientes no corpo.';
    }
  }
}
