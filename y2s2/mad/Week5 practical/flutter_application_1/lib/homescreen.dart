import 'package:flutter/material.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Page Navigation Test"),
        centerTitle: true,
        backgroundColor: Colors.lightBlue,
      ),
      body: Container(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            const Text(
              "Home Screen",
              style: TextStyle(color: Colors.deepPurple, fontSize: 30),
            ),
            FilledButton(
              child: const Text(
                'Go 2nd screen',
                style: TextStyle(fontSize: 30),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/secondpage');
              },
            ),
            SizedBox(height: 20),
            FilledButton(
              child: const Text(
                'Go 3rd screen',
                style: TextStyle(fontSize: 30),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/thirdpage');
              },
            ),
          ],
        ),
      ),
    );
  }
}