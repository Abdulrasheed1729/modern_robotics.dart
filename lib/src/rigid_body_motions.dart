import 'package:scidart/numdart.dart' as nd;

// Chapter 3: Rigid Body Motions

/// Inverts a rotation matrix
nd.Array2d rotInv(nd.Array2d r) {
  return nd.matrixTranspose(r);
}

/// Converts a 3-vector to an SO(3) representation
///
nd.Array2d vecToSO3(nd.Array omg) {
  // throws an [Exception] if the input is not a 3-vector
  if (omg.length != 3) throw Exception();

  return nd.Array2d([
    nd.Array([0, -omg[2], omg[1]]),
    nd.Array([omg[2], 0, -omg[0]]),
    nd.Array([-omg[1], omg[0], 0]),
  ]);
}
