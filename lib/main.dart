import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'pages/tugas1.dart';
import 'pages/tugas2.dart';
import 'pages/tugas3.dart';
import 'pages/tugas4.dart';
import 'pages/tugas5.dart';
import 'pages/tugas6.dart';
import 'pages/tugas7.dart';
import 'pages/tugas8.dart';
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
      title: 'Tugas Kodein',
      theme: ThemeData(useMaterial3: false),
      home: const Dashboard(),
    );
  }
}

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text("Hafizh Fattah",
            style: GoogleFonts.montserrat(
              fontSize: 18,
              letterSpacing: 1,
              fontWeight: FontWeight.w400,
            )),
      ),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(12),
          children: const [
            FormDashboard(
              judul: "Tugas 1",
              deskripsi: "Membuat Page travel",
              route: Tugas1(),
            ),
            FormDashboard(
              judul: "Tugas 2",
              deskripsi: "Membuat Card",
              route: Tugas2(),
            ),
            FormDashboard(
              judul: "Tugas 3",
              deskripsi: "Login Page",
              route: Tugas3(),
            ),
            FormDashboard(
              judul: "Tugas 4",
              deskripsi: "Todo Page",
              route: Tugas4(),
            ),
            FormDashboard(
              judul: "Tugas 5",
              deskripsi: "Slicing Shopping Page",
              route: Tugas5(),
            ),
            FormDashboard(
              judul: "Tugas 6",
              deskripsi: "Todo App",
              route: Tugas6(),
            ),
            FormDashboard(
              judul: "Tugas 7",
              deskripsi: "Live Coding 1 Dashboard",
              route: Tugas7(),
            ),
            FormDashboard(
              judul: "Tugas ",
              deskripsi: "Live Coding 2 Login page",
              route: Tugas8(),
            ),
          ],
        ),
      ),
    );
  }
}
