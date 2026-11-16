
import 'package:flutter/material.dart';

class ArtPage2 extends StatefulWidget {
  final Widget homeScreen;
  final Widget previousScreen;

  const ArtPage2({
    super.key,
    required this.homeScreen,
    required this.previousScreen,
  });

  @override
  State<ArtPage2> createState() => _ArtPage2State();
}

class _ArtPage2State extends State<ArtPage2> {

  @override
  void initState() {
    super.initState();
    print('ArtPage2 initState');
  }

  @override
  void deactivate() {
    super.deactivate();
    print('ArtPage2 deactivating');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Art Page 2'),
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => widget.homeScreen,
                ),
              );
            },
            child: const Text('Go Home Screen'),
          ),

          ElevatedButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => widget.previousScreen,
                ),
              );
            },
            child: const Text('Go Previous Screen'),
          ),
        ],
      ),
    );
  }
}
