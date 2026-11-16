
import 'package:flutter/material.dart';
import 'artpage2.dart';

class ArtPage1 extends StatefulWidget {
  final Widget homeScreen;

  const ArtPage1({
    super.key,
    required this.homeScreen,
  });

  @override
  State<ArtPage1> createState() => _ArtPage1State();
}

class _ArtPage1State extends State<ArtPage1> {

  @override
  void initState() {
    super.initState();
    print('ArtPage1 initState');
  }

  @override
  void deactivate() {
    super.deactivate();
    print('ArtPage1 deactivating');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Art Page 1'),
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => ArtPage2(
                    homeScreen: widget.homeScreen,
                    previousScreen: ArtPage1(
                      homeScreen: widget.homeScreen,
                    ),
                  ),
                ),
              );
            },
            child: const Text('Go Art Page 2'),
          ),

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
        ],
      ),
    );
  }
}
