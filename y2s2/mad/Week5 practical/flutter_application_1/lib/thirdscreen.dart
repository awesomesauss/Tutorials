import 'package:flutter/material.dart';


class ThirdScreen extends StatefulWidget {
  const ThirdScreen({super.key});

  @override
  State<ThirdScreen> createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Third Screen"),
        centerTitle: true,
        backgroundColor: Colors.tealAccent,
      ),
      body: Container(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            const Text(
              "Third Screen",
              style: TextStyle(fontSize: 30, color: Colors.deepPurple),
            ),
            FilledButton(
              child: const Text(
                "Go home screen",
                style: TextStyle(fontSize: 30),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/homepage');
              },
            ),
            SizedBox(height: 20),
            FilledButton(
              child: const Text(
                'Go Previous Screen',
                style: TextStyle(fontSize: 30),
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
