double calculateShippingCost(double weightKg, String destination) {
  if (weightKg <= 0) {
    throw ArgumentError('Weight must be greater than zero');
  }

  if (destination != 'nacional' && destination != 'internacional') {
    throw ArgumentError('Invalid destination');
  }

  if (destination == 'nacional') {
    if (weightKg <= 5) {
      return 20.0;
    } else {
      return 20.0 + (weightKg - 5) * 5.0;
    }
  }

  if (destination == 'internacional') {
    if (weightKg <= 5) {
      return 50.0;
    } else {
      return 50.0 + (weightKg - 5) * 10.0;
    }
  }

  // Este ponto nunca é alcançado, mas o Dart exige retorno
  throw ArgumentError('Unexpected error');
}
