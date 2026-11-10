import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class BmiAPP extends StatefulWidget {
  const BmiAPP({super.key});

  @override
  State<BmiAPP> createState() => _BmiAPPState();
}

class _BmiAPPState extends State<BmiAPP> {
  final TextEditingController _height = TextEditingController();
  final TextEditingController _weight = TextEditingController();
  String _bmiresult = '';

  @override
  void dispose() {
    _height.dispose();
    _weight.dispose();
    super.dispose();
  }

  void calculate() {
    if (_height.text.isEmpty || _weight.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Please fill in both height and weight!")),
      );
      return;
    }

    double? hm = double.tryParse(_height.text);
    double? w = double.tryParse(_weight.text);

    if (hm == null || w == null || hm <= 0 || w <= 0) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Please fill in the data properly!")),
      );
      return;
    }

    double bmi = w / (hm * hm);

    setState(() {
      _bmiresult = bmi.toStringAsFixed(2);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 219, 206, 205),
      appBar: AppBar(
        title: const Text("BMI Calculator"),
        backgroundColor: Colors.lightBlueAccent,
        titleTextStyle: const TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _height,
              keyboardType: const TextInputType.numberWithOptions(decimal: true),
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.allow(RegExp(r'^\d+(\.\d*)?')),
              ],
              decoration: const InputDecoration(hintText: 'Height (m)'),
            ),
            TextField(
              controller: _weight,
              keyboardType: const TextInputType.numberWithOptions(decimal: true),
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.allow(RegExp(r'^\d+(\.\d*)?')),
              ],
              decoration: const InputDecoration(hintText: "Weight (kg)"),
            ),
            const Padding(padding: EdgeInsets.all(10)),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.purple,
                foregroundColor: Colors.white,
                textStyle: const TextStyle(fontWeight: FontWeight.bold),
              ),
              onPressed: calculate,
              child: const Text("Calculate"),
            ),
            Text(_bmiresult),
          ],
        ),
      ),
    );
  }
}