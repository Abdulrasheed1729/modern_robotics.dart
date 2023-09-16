import 'package:modern_robotics/src/extensions.dart';
import 'package:scidart/numdart.dart' as nd;

/// Determines whether a scalar is small enough to be treated as zero
///
bool nearZero(double z) {
  return z.abs() < 1e-6;
}

/// Normalize a Vector
///
nd.Array normalize(nd.Array v) {
  return nd.arrayDivisionToScalar(v, v.norm);
}
