import 'package:flutter/material.dart';

class Playiconbutton extends StatefulWidget {
  const new({super.key});

  @override
  State<Playiconbutton> createState() => _PlayiconbuttonState();
}

class _PlayiconbuttonState extends State<Playiconbutton> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            color: Colors.orange,
            child: Row(
              children: [
                Text('Art page 1'),
                IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context,'/artpage1');
                  },
                  icon: Icon(Icons.arrow_forward_sharp),
                )
              ],
            ),
          ),
          SizedBox(height: 10),
          Container(
            color: Colors.orange,
            child: Row(
              children: [
                Text('Art page 2'),
                IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/artpage2');
                  },
                  icon: Icon(Icons.arrow_forward_sharp),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}