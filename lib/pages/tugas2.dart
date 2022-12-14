import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils.dart';

class Tugas2 extends StatelessWidget {
  const Tugas2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: ListView(
          children: [
            Container(
              height: 148.0,
              padding: const EdgeInsets.all(20),
              decoration: const BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: blue,
                    blurRadius: 24,
                    offset: Offset(0, 11),
                  ),
                ],
                color: blue,
                borderRadius: BorderRadius.all(
                  Radius.circular(
                    16.0,
                  ),
                ),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      const CircleAvatar(
                        backgroundColor: white,
                        radius: 22,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.person,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Hafizh Fattah Amrizal",
                              style: GoogleFonts.montserrat(
                                fontSize: 16,
                                color: white,
                                letterSpacing: 1,
                                fontWeight: FontWeight.w600,
                              )),
                          Text("Mobile Programmer",
                              style: GoogleFonts.montserrat(
                                fontSize: 14,
                                color: white,
                                letterSpacing: 1,
                                fontWeight: FontWeight.w400,
                              )),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 16.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Reus2(
                        value: "846",
                        label: "Colect",
                      ),
                      Reus2(
                        value: "51",
                        label: "Attention",
                      ),
                      Reus2(
                        value: "267",
                        label: "Colect",
                      ),
                      Reus2(
                        value: "29",
                        label: "Coupons",
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
