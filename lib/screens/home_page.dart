import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:my_app/screens/game.dart';
import 'package:my_app/utils/utils.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _player_1_controller = TextEditingController();
  final _player_2_controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    String player1;
    String player2;

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 20, 17, 42),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromARGB(255, 20, 17, 42),
        title: Text('Tic Tac Toe'),
        centerTitle: true,
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.purple,
                gradient: LinearGradient(
                  colors: [
                    Colors.purple,
                    Colors.pink,
                  ],
                ),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Center(
                  child: Text(
                'Enter Players',
                style: style(),
              )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text('Player-1', style: style()),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.white,
              ),
              child: TextField(
                controller: _player_1_controller,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25))),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text('Player-2', style: style()),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.white,
              ),
              child: TextField(
                controller: _player_2_controller,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25))),
              ),
            ),
          ),
          SizedBox(
            height: 100,
          ),
          GestureDetector(
            onTap: () {
              player1 = _player_1_controller.text;
              player2 = _player_2_controller.text;
              _player_1_controller.clear();
              _player_2_controller.clear();

              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      GamePad(player1: player1, player2: player2),
                ),
              );
            },
            child: Container(
              color: Colors.purple,
              width: 100,
              // width: 50,
              height: 40,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.gamepad),
                  Text('Start'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
