abstract class Calculate {
  double dispatch(double x, double y);
}

class Add extends Calculate {
  @override
  double dispatch(double x, double y) {
    return x + y;
  }

}

class Sub extends Calculate {
  @override
  double dispatch(double x, double y) {
    return x - y;
  }

}


class Times extends Calculate {
  @override
  double dispatch(double x, double y) {
    return x * y;
  }

}


class Div extends Calculate {
  @override
  double dispatch(double x, double y) {
    if (y == 0.0) {
      throw Exception("Não é possível dividir por zero");
    }

    return x / y;
  }

}