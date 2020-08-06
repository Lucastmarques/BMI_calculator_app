import 'package:flutter/material.dart';
import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({@required this.height, @required this.weight});

  final int height;
  final int weight;

  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 40.0) {
      return 'Obesidade Grau III';
    } else if (_bmi >= 35.0 && _bmi < 40.0) {
      return 'Obesidade Grau II';
    } else if (_bmi >= 30.0 && _bmi < 35.0) {
      return 'Obesidade Grau I';
    } else if (_bmi >= 25.0 && _bmi < 30.0) {
      return 'Sobrepeso';
    } else if (_bmi >= 18.5 && _bmi < 25.0) {
      return 'Peso Ideal';
    } else if (_bmi >= 17 && _bmi < 18.5) {
      return 'Magreza Leve';
    } else if (_bmi >= 16 && _bmi < 17) {
      return 'Magreza Moderada';
    } else {
      return 'Magreza Grave';
    }
  }

  String getInterpretation() {
    if (_bmi >= 40.0) {
      return 'A obesidade de grau III (Móbida) apresenta graves riscos à sua saúde, como refluxo, alta chance de infarto, AVC, dificuldade de locomoção e escaras.';
    } else if (_bmi >= 35.0 && _bmi < 40.0) {
      return 'A obesidade grau II (Severa) pode causar doenças graves como apneia do sono e falta de ar constantes. Procure um médico o mais rápido possível e evite se esforçar muito!';
    } else if (_bmi >= 30.0 && _bmi < 35.0) {
      return 'A obesidade grau I pode gerar diabetes, infarto, angina e aterosclerose. Procure um médico!';
    } else if (_bmi >= 25.0 && _bmi < 30.0) {
      return 'O sobrepeso pode causar fadiga, varizes e má circulação cardiovascular. Realizar uma dieta balanceada e exercícios físicos regrados é uma boa opção para alcaçar o seu Peso Ideal!';
    } else if (_bmi >= 18.5 && _bmi < 25.0) {
      return 'Você está com o PESO IDEAL e possui menores riscos para doenças!';
    } else if (_bmi >= 17 && _bmi < 18.5) {
      return 'Embora ignorada ou cobiçada por muitos, a magreza leve pode gerar danos à sua saúde como estresse, ansiedade e fadiga. Procure uma nutricionista!';
    } else if (_bmi >= 16 && _bmi < 17) {
      return 'A magreza moderada apresenta um risco à sua saúde. Uma das possíveis consequências são a infertilidade, queda do cabelo e falta de mestruação no caso das mulheres.';
    } else {
      return 'As possíveis consequências da magreza grave são insuficiência cardíaca, anemia grave e enfraquecimento imunológico.';
    }
  }

  String getInterpretationResumed() {
    if (_bmi >= 40.0) {
      return 'PROCURE UM MÉDICO COM URGÊNCIA!';
    } else if (_bmi >= 35.0 && _bmi < 40.0) {
      return 'CUIDADO!';
    } else if (_bmi >= 30.0 && _bmi < 35.0) {
      return 'ATENÇÃO!';
    } else if (_bmi >= 25.0 && _bmi < 30.0) {
      return 'QUASE LÁ!';
    } else if (_bmi >= 18.5 && _bmi < 25.0) {
      return 'PARABÉNS!';
    } else if (_bmi >= 17 && _bmi < 18.5) {
      return 'ATENÇÃO!';
    } else if (_bmi >= 16 && _bmi < 17) {
      return 'CUIDADO!';
    } else {
      return 'PROCURE UM MÉDICO COM URGÊNCIA!';
    }
  }
}
