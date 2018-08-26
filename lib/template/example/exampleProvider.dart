import 'package:flutter/material.dart';
import 'package:flutter_bloc_pattern/template/example/exampleBloc.dart';

class ExampleProvider extends InheritedWidget {
  final ExampleBloc exampleBloc;

  ExampleProvider({
    Key key,
    @required this.exampleBloc,
    Widget child,
  }) : super(key: key, child: child);

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) => true;

  static ExampleBloc of(BuildContext context) =>
      (context.inheritFromWidgetOfExactType(ExampleProvider) as ExampleProvider)
          .exampleBloc;
}
