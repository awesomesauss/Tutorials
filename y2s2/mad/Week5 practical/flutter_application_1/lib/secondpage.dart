import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second Screen"),
        centerTitle: true,
        backgroundColor: Colors.tealAccent,
      ),
      body: Container(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            const Text(
              'Second Screen',
              style: TextStyle(fontSize: 30, 
              color: Colors.deepPurple),
            ),
            FilledButton(child:
            const Text("Go Home Screen",
            style: TextStyle(fontSize:30),),
            onPressed: () {
              Navigator.pushNamed(context, '/homepage');
            },
            ),
            SizedBox(height:20),
            FilledButton(child: 
            const Text('Go Third Screen', 
            style: TextStyle(fontSize: 30)),
            onPressed: () {
              Navigator.pushNamed(context, '/thirdpage');
            },
            )
          ],
        )
      ));
  }
}