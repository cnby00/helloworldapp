import 'package:flutter/material.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hello World APP',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  String _text = "Hoşgeldiniz"; // Başlangıç metni

  void _toggleText() {
    setState(() {
      if (_text == "Hoşgeldiniz") {
        _text = "Hello, World!";
      } else {
        _text = "Hoşgeldiniz";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hello World APP'),
        centerTitle: true,
        backgroundColor: Colors.deepPurpleAccent, // AppBar rengi
      ),
      body: Center(
        child: GestureDetector(
          onTap: _toggleText, // Metne tıklandığında metni değiştir
          child: Container(
            padding: const EdgeInsets.all(30.0),
            decoration: BoxDecoration(
              color: Colors.deepPurpleAccent, // Arka plan rengi
              borderRadius: BorderRadius.circular(30), // Yuvarlatılmış köşeler
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.3),
                  blurRadius: 15,
                  offset: Offset(0, 8),
                ),
              ],
            ),
            child: Text(
              _text, // Dinamik olarak değişen metin
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                letterSpacing: 1.5, // Harfler arasındaki mesafe
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
