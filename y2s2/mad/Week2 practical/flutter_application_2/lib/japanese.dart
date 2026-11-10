import 'package:flutter/material.dart';

class JapElective extends StatefulWidget {

  JapElective({super.key});

  @override
  State<JapElective> createState() => _JapElectiveState();
}

class _JapElectiveState extends State<JapElective> {
  var count = 0;

  void func1() {
    count = count + 1;
    print('count = $count');
    setState(() {
      
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          'Japanese Elective Class',
          textDirection: TextDirection.ltr,
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            'Class size - $count',
            textDirection: TextDirection.ltr,
            style: TextStyle(fontSize: 30, 
            color: count > 10 ? Colors.red : Colors.green),
          ),
          const SizedBox(width: 100),
          FilledButton(onPressed: func1, child: const Text('+')),
        ],
      ),
    );
  }
}
