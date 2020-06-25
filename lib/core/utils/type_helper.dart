class TypeHelper {
  static bool freezedEquals<A, B>(A a, B b) {
    return a.runtimeType.toString().contains(b.toString());
  }
}
