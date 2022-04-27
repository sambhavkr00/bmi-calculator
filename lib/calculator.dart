import 'dart:math';

class Calculate {
  Calculate({required this.height, required this.weight});

  final int height;
  final int weight;
  late double _bmi;

  String calculateBMI() {
    _bmi = (weight) / pow(height, 2);
    _bmi = _bmi * 10000;
    return _bmi.toStringAsFixed(1);
  }

  String getResults() {
    if (_bmi >= 25) {
      return 'OverWeight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'UnderWeight';
    }
  }

  String getReview() {
    if (_bmi >= 25) {
      return 'You have a higher body weight. Try to do exercise more and more!';
    } else if (_bmi > 18.5) {
      return 'You have a normal body weight. Keep it up!';
    } else {
      return 'You have lower body weight. Try to eat bit more!';
    }
  }
}
