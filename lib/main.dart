import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: Oiii(),
    );
  }
}

class Oiii extends StatelessWidget {
  const Oiii({super.key});

  @override
  Widget build(BuildContext context) {
    //Declaration Link For Image
    String imageLink = "https://picsum.photos/id/61/1000";

    //Declaration Font Style
    final fontStyle = GoogleFonts.montserrat(
      letterSpacing: 1,
      fontWeight: FontWeight.w500,
    );

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
      body: ListView(
        padding: const EdgeInsets.all(12),
        children: [
          Container(
            height: 200.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  imageLink,
                ),
                fit: BoxFit.cover,
              ),
              borderRadius: const BorderRadius.all(
                Radius.circular(12.0),
              ),
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Deschinen Lake Campground",
                      style: GoogleFonts.montserrat(
                        color: Colors.black,
                        letterSpacing: 1,
                        fontWeight: FontWeight.w600,
                      )),
                  Text("Kandersteg, Switzerland",
                      style: GoogleFonts.montserrat(
                        color: Colors.grey,
                        letterSpacing: 1,
                        fontWeight: FontWeight.w500,
                      )),
                ],
              ),
              const Spacer(),
              Icon(
                CupertinoIcons.star_fill,
                color: Colors.red[600],
              ),
              const SizedBox(
                width: 2.0,
              ),
              Text("41", style: fontStyle),
            ],
          ),
          const SizedBox(
            height: 20.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              IconNih(
                label: "Call",
                icon: Icon(
                  Icons.call,
                  color: Colors.blue,
                  size: 24.0,
                ),
              ),
              IconNih(
                label: "Route",
                icon: Icon(
                  CupertinoIcons.map_fill,
                  color: Colors.blue,
                  size: 24.0,
                ),
              ),
              IconNih(
                label: "Share",
                icon: Icon(
                  Icons.share,
                  color: Colors.blue,
                  size: 24.0,
                ),
              )
            ],
          ),
          const SizedBox(
            height: 20.0,
          ),
          Text(
              "Dolore consequat adipisicing ex Reprehenderit et fugiat laborum ad amet. in fugiat eiusmod excepteur dolore sunt. Reprehenderit incididunt minim ullamco ut exercitation labore anim irure occaecat commodo velit. Duis commodo ullamco aliquip irure eiusmod. Nostrud tempor esse velit eiusmod consectetur.",
              style: fontStyle),
        ],
      ),
    );
  }
}

//Resubale Widget
class IconNih extends StatefulWidget {
  const IconNih({
    Key? key,
    required this.icon,
    this.label,
  }) : super(key: key);

  final Widget icon;
  final String? label;

  @override
  State<IconNih> createState() => _IconNihState();
}

class _IconNihState extends State<IconNih> {
  //Declaration Font Style
  final fontStyle = GoogleFonts.montserrat(
    letterSpacing: 1,
    fontWeight: FontWeight.w500,
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        widget.icon,
        const SizedBox(
          height: 10.0,
        ),
        Text(widget.label.toString(), style: fontStyle),
      ],
    );
  }
}
