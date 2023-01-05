// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Tugas6 extends StatefulWidget {
  const Tugas6({Key? key}) : super(key: key);

  @override
  State<Tugas6> createState() => _Tugas6State();
}

class _Tugas6State extends State<Tugas6> {
  bool isChecked = false;
  final List<String> todos = [
    "Mandi",
    "Mengerjakan Project",
    "Game",
    "Belanja"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: ListView.builder(
            itemCount: todos.length,
            itemBuilder: (context, index) {
              var isText = todos[index];
              return CheckboxListTile(
                title: Row(
                  children: [
                    Text(
                      isText,
                      style: GoogleFonts.poppins(
                        decoration: isChecked
                            ? TextDecoration.lineThrough
                            : TextDecoration.none,
                        letterSpacing: 1,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const Spacer(),
                    IconButton(
                        onPressed: () {
                          setState(() {
                            todos.removeAt(index);
                          });
                        },
                        icon: const Icon(Icons.delete)),
                  ],
                ),
                onChanged: (value) {
                  setState(() {
                    isChecked = value!;
                  });
                },
                value: isChecked,
              );
            }));
  }
}
