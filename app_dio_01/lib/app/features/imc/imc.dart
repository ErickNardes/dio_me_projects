class Imc {
  static String calculateImc(double weight, double height) {
    final imc = weight / (height * height);
    return imc.toStringAsFixed(2);
  }

  String messageImc(double imc) {
    var message = '';

    if (imc < 18.5) {
      message = 'Seu IMC é: $imc, Abaixo do peso';
    } else if (imc >= 18.5 && imc < 25.0) {
      message = 'Seu IMC é: $imc, Peso ideal';
    } else if (imc >= 25.0 && imc < 30.0) {
      message = 'Seu IMC é: $imc, Levemente acima do peso';
    } else if (imc >= 30.0 && imc < 35.0) {
      message = 'Seu IMC é: $imc, Obesidade Grau I';
    } else if (imc >= 35.0 && imc < 40.0) {
      message = 'Seu IMC é: $imc, Obesidade Grau II';
    } else {
      message = 'Digite seus dados para calcular o IMC';
    }

    return message;
  }
}
