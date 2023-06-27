import 'package:flutter/material.dart';
import 'StatelessWidget.dart';
import 'StatefullWidget.dart';
import 'ContainerWidget.dart';
import 'ButtonWidget.dart';
import 'InputWidget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // widget appBar
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(
              Icons.menu,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
          title: Text('First Screen'),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {},
            )
          ],
        ),
        // widget body
        body: Center(
          child: Column(
            children: [
              Heading(
                text: 'Hello World!',
              ),
              Padding(padding: EdgeInsets.all(2)),
              BiggerText(
                text: 'Hello World!',
              ),
              Padding(padding: EdgeInsets.all(2)),
              ContainerWidget(), // widget container
              Padding(padding: EdgeInsets.all(2)),
              ButtonWidget(), // widget button
              Padding(padding: EdgeInsets.all(2)),
              InputWidget(),
            ],
          ),
        ),

        // widget floating action button
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
