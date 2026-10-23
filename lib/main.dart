import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  //Declaring a function
  void doSomething() {
    print("Hello World");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: doSomething,
            icon: const Icon(Icons.menu)
          ),
          backgroundColor: Colors.blue,
          title: const Text("Profile"),
        ),
        body: Center(
          child: Column(
            children: [
              SizedBox(height: 20),
              CircleAvatar(
                backgroundColor: Colors.black12,
                radius: 100,
                child: ClipOval(
                  child: Image.asset(
                    'assets/images/profile.jpeg',
                    width: 200,
                    height: 200,
                    fit: BoxFit.cover,
                  )
                ),
              ),
            ],
          ),
        ),
      )
    );
  }
}