import 'package:flutter/material.dart';
import 'src/homepage.dart';

void main() {
  runApp(MaterialApp(
    title: 'Navigation Basics',
    home: Mapillary(),
  ));
}

class Mapillary extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text('Mapillary'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Open HomePage'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomePage()),
            );
          },
        ),
      ),
    );
  }
}
