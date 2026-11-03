import 'package:flutter/material.dart';

// Exercise 2.3 - Continue the Art App from Exercise 2.2
//
// Add a button that toggles the background between the default BLACK
// and PINK. The text inside the button changes as well, and ArtPage has
// been converted to a StatefulWidget to facilitate the toggle effect.
//
// Run with:  flutter run -t lib/exercise_2_3.dart

void main() {
  runApp(const MaterialApp(home: ArtPage()));
}

/// Background colours used by the toggle.
const Color _black = Color(0xFF000000);
const Color _pink = Color(0xFFE91B63);

class ArtPage extends StatefulWidget {
  const ArtPage({super.key});

  @override
  State<ArtPage> createState() => _ArtPageState();
}

class _ArtPageState extends State<ArtPage> {
  // Starts on the default black background.
  bool _isPink = false;

  void _toggleBackground() {
    setState(() {
      _isPink = !_isPink;
    });
  }

  @override
  Widget build(BuildContext context) {
    final Color background = _isPink ? _pink : _black;

    // Keep the wording readable against whichever background is showing.
    final Color textColour = _isPink ? Colors.black : Colors.white;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Art Page'),
      ),
      body: SizedBox.expand(
        child: Container(
        color: background,
        padding: const EdgeInsets.all(15),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image.asset(
                  'assets/parasol.png',
                  height: 300,
                  fit: BoxFit.contain,
                ),
              ),
              const SizedBox(height: 16),

              // title
              Text(
                'Woman with a Parasol',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: textColour,
                ),
              ),
              const SizedBox(height: 6),

              // year (medium)
              Text(
                '1875 (oil on canvas)',
                style: TextStyle(
                  fontSize: 16,
                  fontStyle: FontStyle.italic,
                  color: textColour,
                ),
              ),
              const SizedBox(height: 12),

              // artist
              Text(
                'Claude Monet',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: textColour,
                ),
              ),
              const SizedBox(height: 4),

              // location
              Text(
                '(National Gallery of Art, Washington, D.C.)',
                style: TextStyle(
                  fontSize: 14,
                  color: textColour.withValues(alpha: 0.7),
                ),
              ),
              const SizedBox(height: 24),

              // Button: toggles the background black <-> pink.
              Center(
                child: ElevatedButton(
                  onPressed: _toggleBackground,
                  child: Text(
                    _isPink ? 'Change to Black' : 'Change to Pink',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      ),
    );
  } // end of build
} // end of _ArtPageState