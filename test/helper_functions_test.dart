import 'package:modern_robotics/modern_robotics.dart';
import 'package:scidart/numdart.dart';
import 'package:test/test.dart';

void main() {
  group(
    'ModernRobotics.dart',
    () {
      group('nearZero', () {
        test('returns false if number is greater than 1e-6', () {
          expect(nearZero(1), isFalse);
          expect(nearZero(0.00005), isFalse);
        });

        test('returns true when number < 1e-6', () {
          expect(nearZero(0.000000001), isTrue);
          expect(nearZero(-0.00000001), isTrue);
        });
      });

      group('Normalize', () {
        test('returns a unit vector in the direction of Array([1, 2, 3])', () {
          final expectedArray = Array(
            [0.2672612419124244, 0.5345224838248488, 0.8017837257372732],
          );
          expect(
            normalize(Array([1, 2, 3])),
            expectedArray,
          );
        });
      });
    },
  );
}
