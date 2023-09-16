import 'dart:math' as math;

import 'package:modern_robotics/src/extensions.dart';
import 'package:scidart/numdart.dart' as nd;
import 'package:test/test.dart';

void main() {
  group('Extensions Test', () {
    group('Norm', () {
      final array = nd.Array([1, 2, 3]);
      test('test norm', () {
        expect(array.norm, math.sqrt(14));
      });
    });
  });
}
