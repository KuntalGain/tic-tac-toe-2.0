import 'package:flutter/material.dart';
import 'package:my_app/utils/utils.dart';

class GamePad extends StatefulWidget {
  final String player1;
  final String player2;
  const GamePad({
    super.key,
    required this.player1,
    required this.player2,
  });

  @override
  State<GamePad> createState() => _GamePadState();
}

class _GamePadState extends State<GamePad> {
  String player1 = "";
  String player2 = "";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    player1 = widget.player1;
    player2 = widget.player2;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 20, 17, 42),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromARGB(255, 20, 17, 42),
        title: Text('Tic Tac Toe'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                player1,
                style: style(),
              ),
              Text('VS', style: style()),
              Text(
                player2,
                style: style(),
              ),
            ],
          )
        ],
      ),
    );
  }
}
