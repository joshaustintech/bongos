import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(BongosApp());
}

class BongosApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BongoPage(title: 'Flutter Demo Home Page'),
    );
  }
}

class BongoPage extends StatefulWidget {
  BongoPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _BongoPageState createState() => _BongoPageState();
}

class _BongoPageState extends State<BongoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center());
  }
}
