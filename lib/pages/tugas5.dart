import 'package:badges/badges.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils.dart';

class Tugas5 extends StatelessWidget {
  const Tugas5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: const Icon(
            CupertinoIcons.back,
            color: black,
            size: 28,
          ),
        ),
        elevation: 0,
        backgroundColor: white,
        centerTitle: false,
        title: Row(
          children: [
            Text(
              "Nike High Run Pro",
              style: GoogleFonts.montserrat(
                color: black,
                letterSpacing: 1,
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            const Spacer(),
            Badge(
              badgeColor: Colors.black,
              badgeContent: Text(
                "3",
                style: GoogleFonts.montserrat(
                  color: white,
                  letterSpacing: 1,
                  fontWeight: FontWeight.w600,
                ),
              ),
              child: const Icon(
                Icons.shopping_bag_outlined,
                color: black,
              ),
            ),
          ],
        ),
      ),
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          Padding(
            padding: const EdgeInsets.all(18),
            child: Container(
              height: 465,
              padding: const EdgeInsets.all(20),
              decoration: const BoxDecoration(
                color: white,
                boxShadow: [
                  BoxShadow(
                    color: Color(0x19000000),
                    blurRadius: 24,
                    offset: Offset(0, 11),
                  ),
                ],
                borderRadius: BorderRadius.all(
                  Radius.circular(
                    16.0,
                  ),
                ),
              ),
              child: Column(
                children: [
                  Container(
                    height: 300.0,
                    width: 400,
                    decoration: const BoxDecoration(
                      color: Colors.teal,
                      borderRadius: BorderRadius.all(
                        Radius.circular(
                          16.0,
                        ),
                      ),
                    ),
                    child: Center(
                      child: Image.asset(
                        "assets/sepatu.png",
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    children: [
                      Text(
                        "Nike High Run Pro",
                        style: GoogleFonts.montserrat(
                          color: black,
                          letterSpacing: 1,
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const Spacer(),
                      Container(
                        height: 40.0,
                        width: 100,
                        decoration: const BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                Colors.grey,
                                Colors.black,
                              ],
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(12.0),
                            ),
                            color: Colors.redAccent),
                        child: Center(
                          child: Text(
                            "\$235",
                            style: GoogleFonts.montserrat(
                              letterSpacing: 1,
                              color: white,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.blue[100],
                      ),
                      const SizedBox(
                        width: 6.0,
                      ),
                      const CircleAvatar(
                        backgroundColor: Colors.teal,
                      ),
                      const SizedBox(
                        width: 6.0,
                      ),
                      const CircleAvatar(
                        backgroundColor: Colors.indigo,
                      ),
                      const SizedBox(
                        width: 6.0,
                      ),
                      const CircleAvatar(
                        backgroundColor: Colors.blue,
                      ),
                      const Spacer(),
                      Row(
                        children: [
                          Text(
                            "\$70",
                            style: GoogleFonts.montserrat(
                              letterSpacing: 1,
                              color: black,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 5.0,
                      ),
                      Container(
                        height: 40.0,
                        width: 40,
                        decoration: const BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                Colors.grey,
                                Colors.black,
                              ],
                            ),
                            shape: BoxShape.circle,
                            color: Colors.redAccent),
                        child: Center(
                          child: Text(
                            "9",
                            style: GoogleFonts.montserrat(
                              letterSpacing: 1,
                              color: white,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 15.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Description",
                  style: GoogleFonts.montserrat(
                    letterSpacing: 1,
                    color: black,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 8.0,
                ),
                Text(
                  "Cillum ea laboris est id ex Consectetur cillum adipisicing ea velit eiusmod nisi culpa qui fugiat. sint ex cupidatat velit esse irure est ex pariatur.",
                  style: GoogleFonts.montserrat(
                    letterSpacing: 1,
                    color: black,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
          const SizedBox(
            height: 30.0,
          ),
          FittedBox(
            child: Container(
              width: 400,
              padding: const EdgeInsets.symmetric(
                horizontal: 25,
                vertical: 18,
              ),
              decoration: const BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Color(0x19000000),
                    blurRadius: 24,
                    offset: Offset(0, 11),
                  ),
                ],
                color: white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(
                    40.0,
                  ),
                  topRight: Radius.circular(
                    40.0,
                  ),
                ),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        height: 30.0,
                        width: 30,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          border: Border.all(
                            width: 1.5,
                            color: black,
                          ),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(100),
                          ),
                        ),
                        child: const Center(
                          child: Icon(
                            Icons.add,
                            size: 16,
                            color: black,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        "1",
                        style: GoogleFonts.montserrat(
                          letterSpacing: 1,
                          color: black,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                      Container(
                        height: 30.0,
                        width: 30,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          border: Border.all(
                            width: 1.5,
                            color: black,
                          ),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(100),
                          ),
                        ),
                        child: const Center(
                          child: Icon(
                            Icons.add,
                            color: black,
                            size: 16,
                          ),
                        ),
                      ),
                      const Spacer(),
                      Text(
                        "Total: ",
                        style: GoogleFonts.montserrat(
                          letterSpacing: 1,
                          color: black,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        "\$235.0",
                        style: GoogleFonts.montserrat(
                          letterSpacing: 1,
                          fontSize: 16,
                          color: black,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  Container(
                    height: 45.0,
                    width: 400,
                    decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Colors.grey,
                            Colors.black,
                          ],
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(12.0),
                        ),
                        color: Colors.redAccent),
                    child: Center(
                      child: Text(
                        "\$235",
                        style: GoogleFonts.montserrat(
                          letterSpacing: 1,
                          color: white,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
