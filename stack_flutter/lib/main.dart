import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child:
              // Contoh sederhana Stack
              /*
          Stack(
            alignment: Alignment.center,
            children: [
              Container(width: 100, height: 100, color: Colors.blue),
              Text("I'm On Top!", style: TextStyle(color: Colors.white)),
            ],
          ),
          */
              Stack(
                alignment: Alignment.bottomRight,
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: NetworkImage(
                      "https://avatars.githubusercontent.com/u/79066410?v=4",
                    ),
                  ),
                  DecoratedBox(
                    decoration: BoxDecoration(
                      color: Colors.lightBlueAccent,
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white, width: 3),
                    ),
                    child: SizedBox(height: 25, width: 25),
                  ),
                ],
              ),
        ),
      ),
    );
  }
}
