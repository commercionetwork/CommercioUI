class TypeHelper {
  /// Returns [true] if [a] and [b].have the same type.
  ///
  /// [a] should be an instance (e.g. an object) of class [A], whether [b]
  /// should be a [Type].
  static bool hasType(Type a, Type b) {
    final exp = new RegExp("[_\$]*[0-9]*${b.toString()}");

    return exp.hasMatch(a.toString());
  }
}
