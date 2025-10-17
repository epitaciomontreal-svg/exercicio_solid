import '../bin/edge_tests/calculate_shipping_cost.dart';
import 'package:test/test.dart';

void main() {
  group('calculateShippingCost - casos de borda', () {
    test('peso abaixo do mínimo', () {
      expect(() => calculateShippingCost(-1, 'nacional'), throwsArgumentError);
    });

    test('peso zero.', () {
      expect(() => calculateShippingCost(0, 'nacional'), throwsArgumentError);
    });

    test('destino não identificado.', () {
      expect(
        () => calculateShippingCost(101, 'asdasdasd'),
        throwsArgumentError,
      );
    });
  });
}
