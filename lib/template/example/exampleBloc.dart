import 'dart:async';

import 'package:flutter_bloc_pattern/models/exampleItem.dart';
import 'package:rxdart/rxdart.dart';

class ExampleBloc {
  final List<ExampleItem> _items = List<ExampleItem>();

  ExampleBloc() {
    _additionStreamController.stream.listen(_handleAddition);
    _removalStreamController.stream.listen(_handleRemoval);
  }

  _handleAddition(ExampleItem item) {
    _itemsSubject.add(_items..add(item));
  }

  _handleRemoval(ExampleItem item) {
    _itemsSubject.add(_items..remove(item));
  }

  void dispose(){
    _additionStreamController.close();
    _removalStreamController.close();
  }

  /**
   * Streams
   */

  /// Items
  Stream<List<ExampleItem>> get items => _itemsSubject.stream;

  final _itemsSubject = BehaviorSubject<List<ExampleItem>>();

  /**
   * Sinks
   */

  /// Addition
  Sink<ExampleItem> get addition => _additionStreamController.sink;

  final _additionStreamController = StreamController<ExampleItem>();

  /// Removal
  Sink<ExampleItem> get removal => _removalStreamController.sink;

  final _removalStreamController = StreamController<ExampleItem>();
}
