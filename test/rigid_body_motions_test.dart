import 'package:modern_robotics/src/rigid_body_motions.dart';
import 'package:scidart/numdart.dart' as nd;
import 'package:test/test.dart';

void main() {
  group('Chapter 3: Rigid Body Motions', () {
    group('rotInv function', () {
      final input = nd.Array2d([
        nd.Array([0, 0, 1]),
        nd.Array([1, 0, 0]),
        nd.Array([0, 1, 0]),
      ]);

      final expectedOutput = nd.Array2d([
        nd.Array([0, 1, 0]),
        nd.Array([0, 0, 1]),
        nd.Array([1, 0, 0]),
      ]);
      test('work as expected', () {
        expect(rotInv(input), expectedOutput);
      });
    });

    group('vecToSO(3) function', () {
      test('throw an Exception when the dimension of input is not equal to 3',
          () {
        expect(() => vecToSO3(nd.Array([1, 2])), throwsException);
      });

      test('convert the input to SO(3)', () {
        final input = nd.Array([1, 2, 3]);
        final expectedOutput = nd.Array2d([
          nd.Array([0, -3, 2]),
          nd.Array([3, 0, -1]),
          nd.Array([-2, 1, 0]),
        ]);

        expect(vecToSO3(input), expectedOutput);
      });
    });
  });
}
