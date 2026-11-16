
import 'package:flutter/material.dart';
import 'artpage1.dart';
import 'artpage2.dart';

class HomeAPP extends StatefulWidget {
  const HomeAPP({super.key});

  @override
  State<HomeAPP> createState() => _HomeAPPState();
}

class _HomeAPPState extends State<HomeAPP> {

  @override
  void initState() {
    super.initState();
    print('HomeAPP initState');
  }

  @override
  void deactivate() {
    super.deactivate();
    print('HomeAPP deactivating');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Navigation'),
      ),
      body: Column(
        children: [
          const Text('Home Screen'),

          ElevatedButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const ArtPage1(
                    homeScreen: HomeAPP(),
                  ),
                ),
              );
            },
            child: const Text('Go Art Page 1'),
          ),

          ElevatedButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const ArtPage2(
                    homeScreen: HomeAPP(),
                    previousScreen: HomeAPP(),
                  ),
                ),
              );
            },
            child: const Text('Go Art Page 2'),
          ),
        ],
      ),
    );
  }
}
