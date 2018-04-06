import 'package:flutter/material.dart';

void main() => runApp(new GettingStartedApp());

class GettingStartedApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: "Getting Started Title",
        home: new Scaffold(
            appBar: new AppBar(
              title: new Text("App Bar Title"),
            ),
            body: new HomeWidget()));
  }
}

class HomeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
        itemCount: 20,
        itemBuilder: (context, rowNumber) {
          return new Column(
            children: <Widget>[
              new Container(
                padding: new EdgeInsets.all(16.0),
                child: new Column(
                  children: <Widget>[
                    new Image.network("https://picsum.photos/400/200"),
                    new Container(height: 8.0),
                    new Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
                        style: new TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18.0))
                  ],
                ),
              ),
              new Divider()
            ],
          );
        });
  }
}
