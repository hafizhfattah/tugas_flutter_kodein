import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Tugas7 extends StatelessWidget {
  const Tugas7({super.key});

  @override
  Widget build(BuildContext context) {
    List isOrang = [
      ["Rio", "Designer", "11 January 2023"],
      ["Ahmad", "Programmer", "1 February 2023"],
      ["Avrel", "Pegangguran", "20 Maret 2023"],
      ["Isham", "Main Game", "17 Agustus 2023"],
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text(
          "Dashboard",
          style: GoogleFonts.montserrat(
            letterSpacing: 1,
            fontWeight: FontWeight.w500,
          ),
        ),
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            CupertinoIcons.list_dash,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: 4,
        shrinkWrap: true,
        physics: const ScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.grey[200],
                backgroundImage: NetworkImage(
                  "https://picsum.photos/${index + 200}",
                ),
              ),
              title: Text(
                "${isOrang[index][0]}",
                style: GoogleFonts.montserrat(
                  letterSpacing: 1,
                  fontWeight: FontWeight.w500,
                ),
              ),
              trailing: Text(
                "${isOrang[index][2]}",
                style: GoogleFonts.montserrat(
                  letterSpacing: 1,
                  fontWeight: FontWeight.w500,
                ),
              ),
              subtitle: Text(
                "${isOrang[index][1]}",
                style: GoogleFonts.montserrat(
                  letterSpacing: 1,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
