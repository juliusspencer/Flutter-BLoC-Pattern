import 'package:flutter/material.dart';
import 'package:flutter_bloc_pattern/models/exampleItem.dart';
import 'package:flutter_bloc_pattern/template/example/exampleProvider.dart';

class ExampleScreen extends StatelessWidget {
  ExampleScreen({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final exampleBloc = ExampleProvider.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter BLoC Pattern"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: StreamBuilder<List<ExampleItem>>(
            stream: exampleBloc.items,
            initialData: List<ExampleItem>(),
            builder: (context, snapshot) => Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    IconButton(
                      onPressed: () => exampleBloc.addition
                          .add(ExampleItem("template.example", true)),
                      icon: Icon(Icons.add),
                      color: Colors.blue[500],
                    ),
                    Text('Items: ${snapshot.data.length.toString()}'),
                    IconButton(
                      onPressed: snapshot.data.length == 0
                          ? null
                          : () => exampleBloc.removal.add(snapshot.data.last),
                      icon: Icon(Icons.remove),
                      color: Colors.red[500],
                    ),
                  ],
                ),
          ),
        ),
      ),
    );
  }
}
