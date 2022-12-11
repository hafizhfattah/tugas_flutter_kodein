import 'package:flutter/material.dart';

import 'pages/tugas1.dart';
import 'pages/tugas2.dart';
import 'utils.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.dark(useMaterial3: true),
      home: const Dashboard(),
    );
  }
}

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(12),
        children: [
          GestureDetector(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Tugas1()),
            ),
            child: Card(
              child: ListTile(
                title: Text(
                  "Tugas 1",
                  style: fontStyle,
                ),
                subtitle: Text(
                  "Membuat Page Travel",
                  style: fontStyle,
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Tugas2()),
            ),
            child: Card(
              child: ListTile(
                title: Text(
                  "Tugas 2",
                  style: fontStyle,
                ),
                subtitle: Text(
                  "Membuat Card",
                  style: fontStyle,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
