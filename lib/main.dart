import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UUIDs',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var uuid = Uuid();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('UUIDs'),
        ),
        body: Column(
          children: [
            Card(
              child: ListTile(
                title: Text('Time Based UUID'),
                subtitle: Text(uuid.v1()),
              ),
            ),
            Card(
              child: ListTile(
                title: Text('Random UUID'),
                subtitle: Text(uuid.v4()),
              ),
            ),
            Card(
              child: ListTile(
                title: Text('URL BASED UUID'),
                subtitle: Text(uuid.v5(Uuid.NAMESPACE_URL, 'www.example.com')),
              ),
            )
          ],
        ),
      );
  }
}
  
