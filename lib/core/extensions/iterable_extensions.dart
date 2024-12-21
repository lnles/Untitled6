extension ListToMapExtension<K, V> on List<MapEntry<K, V>> {
  Map<K, V> get asMap => Map.fromEntries(this);
}

extension IterableToMapExtension<K, V> on Iterable<MapEntry<K, V>> {
  Map<K, V> get asMap => Map.fromEntries(this);
}
extension ListSecondElementExtension<T> on List<T> {
  T? get second => length < 2 ? null : elementAt(1);
}

extension IterableSecondElementExtension<T> on Iterable<T> {
  T? get second =>
      !iterator.moveNext() || !iterator.moveNext() ? null : iterator.current;
}