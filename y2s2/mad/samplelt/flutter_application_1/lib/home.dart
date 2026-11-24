import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatefulWidget {
  const new({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _largeShirts = TextEditingController();
  final TextEditingController _mediumShirts = TextEditingController();
  final TextEditingController _smallShirts = TextEditingController();
  
  bool spStudent = false;
  int Lsize = 0, Msize = 0, Ssize = 0;
  int Lcost = 0, Mcost = 0, Scost = 0;
  String message = '\$0.00';
  
  void buttonClicked(){
    if (_largeShirts.text.isEmpty || _mediumShirts.text.isEmpty || _smallShirts.text.isEmpty){
      const snackbar1 = SnackBar(content: Text(
        'All text fields must not be empty!'
      ), duration: Duration(seconds:2),
      ); ScaffoldMessenger.of(context).showSnackBar(snackbar1);
      return;
    }
    setState(() {
      Lsize = int.parse(_largeShirts.text);
      Msize = int.parse(_mediumShirts.text);
      Ssize = int.parse(_smallShirts.text);
      Lcost = Lsize * 15;
      Mcost = Msize * 10;
      Scost = Ssize * 5;
      double sum = (Lcost + Mcost + Scost).toDouble();
      if (spStudent == true){
        sum = sum * 0.9;
        message = '(10% Discount) \$${sum.toStringAsFixed(2)}';
      } else {
        message = '(No Discount) \$${sum.toStringAsFixed(2)}';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SP T-shirt"),
        centerTitle: true,
        backgroundColor: (Colors.lightBlueAccent),
        ),
        body: Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            children: [
              Center(
                child: Image.asset('assets/img/T.png'),
                ),
                SizedBox(height:10),
                TextField(
                  keyboardType: TextInputType.number,
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.digitsOnly,
                  ],
                  controller: _largeShirts,
                  decoration: const InputDecoration(
                    labelText: 'Large Shirts',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height:10),
                TextField(
                  keyboardType: TextInputType.number,
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.digitsOnly,
                  ],
                  controller: _mediumShirts,
                  decoration: const InputDecoration(
                    labelText: 'Medium Shirts',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height:10),
                TextField(
                  keyboardType: TextInputType.number,
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.digitsOnly,
                  ],
                  controller: _smallShirts,
                  decoration: const InputDecoration(
                    labelText: 'Small Shirts',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height:10),
                CheckboxListTile(
                  title: Text("SP Student ?"),
                  value: spStudent, 
                  onChanged: (value) {
                    setState(() {
                      spStudent = value as bool;
                    });
                  }),
                SizedBox(height: 10),
                TextButton(
                  style: TextButton.styleFrom(
                  backgroundColor: Colors.purple,
                  foregroundColor: Colors.white
                  ),
                  onPressed: buttonClicked, 
                  child: Text("Check Total",
                  style:TextStyle(fontSize: 20, fontWeight: FontWeight.bold)
                  ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        color:Colors.greenAccent,
                        child: Padding(
                          padding: EdgeInsets.all(10),
                          child: Text(
                            '${Lsize.toString()} L-Size\n\$${Lcost.toString()}',  
                          ),
                          ),
                      ),
                      Container(
                        color:Colors.amberAccent,
                        child: Padding(
                          padding: EdgeInsets.all(10),
                          child: Text(
                            '${Msize.toString()} M-Size\n\$${Mcost.toString()}',  
                          )
                        )
                      ),
                      Container(
                        color:Colors.blueAccent,
                        child: Padding(
                          padding: EdgeInsets.all(10),
                          child: Text(
                            '${Ssize.toString()} S-Size\n\$${Scost.toString()}',  
                          )
                        )
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Center(
                    child: Text('Total Price $message')
                  )
            ],
          )
          ),
    );
  }
}