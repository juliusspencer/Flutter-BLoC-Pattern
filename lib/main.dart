import 'package:flutter/material.dart';
import 'package:flutter_bloc_pattern/template/example/widget/exampleScreen.dart';
import 'package:flutter_bloc_pattern/template/example/exampleProvider.dart';
import 'package:flutter_bloc_pattern/template/example/exampleBloc.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  final ExampleBloc _exampleBloc = ExampleBloc();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter BLoC Pattern',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: ExampleProvider(
          exampleBloc: _exampleBloc,
          child: ExampleScreen()
      ),
    );
  }
}
