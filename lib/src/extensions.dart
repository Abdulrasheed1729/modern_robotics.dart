import 'dart:math' as math;

import 'package:scidart/numdart.dart' as nd;

/// Extension on one dimensional array
extension ArrayX on nd.Array {
  /// Computes the norm of vector
  double get norm {
    var sum = 0.0;
    for (final vector in this) {
      sum += math.pow(vector, 2);
    }
    return math.sqrt(sum);
  }
}
