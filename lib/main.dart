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
      home: BongoPage(title: 'Beat the Bongos'),
    );
  }
}

class BongoPage extends StatefulWidget {
  BongoPage({Key? key, required this.title}) : super(key: key);

  final String title;
  final player = AudioCache();

  @override
  _BongoPageState createState() => _BongoPageState();
}

Widget bongo(BongoPage widget, String path) {
  return Expanded(
    child: TextButton(
      child: Image.asset("assets/bongo.png"),
      onPressed: () {
        widget.player.play(path);
      },
    )
  );
}

class _BongoPageState extends State<BongoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Row(
          children: [
            bongo(widget, "bongo1.wav"),
            bongo(widget, "bongo2.wav"),
            bongo(widget, "bongo3.wav"),
            bongo(widget, "bongo4.wav")
          ]
        )
      )
    );
  }
}
