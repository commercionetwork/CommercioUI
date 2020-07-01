class TypeHelper {
  /// Returns [true] if the object [a] has type [b].
  ///
  /// [a] should be an instance (e.g. an object) of class [A], whether [b]
  /// should be a [Type].
  static bool hasType<A, B>(A a, B b) {
    return a.runtimeType.toString().replaceAll('_\$', '') == b.toString();
  }
}
