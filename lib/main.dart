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
              const SizedBox(height: 20),
                ClipOval(
                  child: Image.asset(
                    'assets/images/profile.jpeg',
                    width: 200,
                    height: 200,
                    fit: BoxFit.cover,
                  )
                ),
              const SizedBox(height: 20),
              const Text(
                "Ayesha",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 14,
                  vertical: 6,
                ),
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(88.888),
                ),
                child: const Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.school, size: 17, color: Colors.yellow),
                    SizedBox(width: 4),
                    Text(
                      "Student",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(16),
                      decoration: const BoxDecoration(
                        color: Colors.brown
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            'assets/images/profile.jpeg',
                            width: 50,
                            height: 50,
                          ),
                          const SizedBox(height: 30),
                          const Text("100%"),
                          const SizedBox(height: 30),
                          const Text("Music"),
                        ],
                      ), 
                    ),
                    Container(
                      padding: const EdgeInsets.all(16),
                      decoration: const BoxDecoration(
                        color: Colors.brown,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            'assets/images/profile.jpeg',
                            width: 50,
                            height: 50,
                          ),
                          const SizedBox(height: 30),
                          const Text("100%"),
                          const SizedBox(height: 30),
                          const Text("Food"),
                        ],
                      ), 
                    ),
                    Container(
                      padding: const EdgeInsets.all(16),
                      decoration: const BoxDecoration(
                        color: Colors.brown,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            'assets/images/profile.jpeg',
                            width: 50,
                            height: 50,
                          ),
                          const SizedBox(height: 30),
                          const Text("100%"),
                          const SizedBox(height: 30),
                          const Text("Travel"),
                        ],
                      ), 
                    ),
                   ]))
            ],
          ),
        ),
      )
    );
  }
}