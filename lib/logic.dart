import 'dart:math';

class CalculateBrain {
  CalculateBrain({required this.height, required this.weight});
  final int height;
  final int weight;
  double? _bmi;
  String calculateBmi() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi!.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi! >= 25) {
      return "OverWeight";
    } else if (_bmi! > 18.5) {
      return 'Normal';
    } else {
      return "UnderWeight";
    }
  }

  String getInterpolation() {
    if (_bmi! >= 25) {
      return "You have heigher than  Normal weight try to exercise more.";
    } else if (_bmi! > 18.5) {
      return 'Wow you have perfect body weight';
    } else {
      return "You have lower than Normal body weight, You can eat bit more";
    }
  }
}
