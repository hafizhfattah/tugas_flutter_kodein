import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils.dart';

class Tugas3 extends StatelessWidget {
  const Tugas3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(12),
          children: [
            Image.network(
              "https://img.freepik.com/free-vector/mobile-login-concept-illustration_114360-135.jpg?w=2000",
              fit: BoxFit.cover,
            ),
            const SizedBox(
              height: 20.0,
            ),
            TextFormField(
              style: GoogleFonts.montserrat(
                letterSpacing: 1,
                color: Colors.blueGrey,
                fontWeight: FontWeight.w400,
              ),
              decoration: InputDecoration(
                labelText: 'Email',
                labelStyle: GoogleFonts.montserrat(
                  letterSpacing: 1,
                  fontWeight: FontWeight.w500,
                ),
                suffixIcon: const Icon(
                  Icons.email,
                ),
                focusedBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                  borderSide: BorderSide(
                    color: Colors.blue,
                  ),
                ),
                enabledBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                  borderSide: BorderSide(
                    width: 0.8,
                    color: Colors.blueGrey,
                  ),
                ),
              ),
              onChanged: (value) {},
            ),
            const SizedBox(
              height: 14.0,
            ),
            TextFormField(
              obscureText: true,
              style: GoogleFonts.montserrat(
                letterSpacing: 1,
                color: Colors.blueGrey,
                fontWeight: FontWeight.w400,
              ),
              decoration: InputDecoration(
                labelText: 'Passowrd',
                labelStyle: GoogleFonts.montserrat(
                  letterSpacing: 1,
                  fontWeight: FontWeight.w500,
                ),
                suffixIcon: const Icon(
                  Icons.password,
                ),
                focusedBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                  borderSide: BorderSide(
                    color: Colors.blue,
                  ),
                ),
                enabledBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                  borderSide: BorderSide(
                    width: 0.8,
                    color: Colors.blueGrey,
                  ),
                ),
              ),
              onChanged: (value) {},
            ),
            const SizedBox(
              height: 20.0,
            ),
            SizedBox(
              height: 40,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                ),
                onPressed: () {},
                child: Text(
                  "Login",
                  style: GoogleFonts.montserrat(
                    letterSpacing: 1,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 14.0,
            ),
            SizedBox(
              height: 40,
              child: TextButton(
                child: Text(
                  "Login with Facebook",
                  style: fontStyle,
                ),
                onPressed: () {},
              ),
            )
          ],
        ),
      ),
    );
  }
}
