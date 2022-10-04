import 'dart:io';

import 'repository.dart';

class InMemoryCachce implements Repository {
  final _storage = Map<int, Model>();

  @override
  Model create() {
    final ids = _storage.keys.toList()..sort();
    final id = (ids.length == 0) ? 1 : ids.last + 1;

    final model = Model(id: id);
    _storage[id] = model;
    return model;
  }

  @override
  void clear() {
    _storage.clear();
  }

  @override
  void delete(Model item) {
    _storage.remove(item.id);
  }

  @override
  Model get(int id) {
    return _storage[id]!;
  }

  @override
  List<Model> getAll() {
    return _storage.values.toList(growable: false);
  }

  @override
  void update(Model item) {
    _storage[item.id] = item;
  }
}
