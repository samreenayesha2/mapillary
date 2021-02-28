import 'package:flutter/material.dart';
import 'capture/camera.dart';

void main(List<String> args) {}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 1;

  final tabs = [
    Center(child: Text('Home')),
    Center(
      child: Text('Camera'),
    ),
    Center(child: Text('Profile')),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: Text('Bottom Navigation'),
      ),
      body: tabs[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        type: BottomNavigationBarType.shifting,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            backgroundColor: Colors.blue,
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.camera),
            backgroundColor: Colors.orangeAccent,
            label: 'Camera',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            backgroundColor: Colors.blue,
            label: 'Profile',
          ),
        ],
        onTap: (index1) {
          setState(() {
            currentIndex = 1;
          });
          Navigator.push(
            context,
            // ignore: missing_required_param
            MaterialPageRoute(builder: (context) => Camera()),
          );
        },
      ),
    );
  }
}
