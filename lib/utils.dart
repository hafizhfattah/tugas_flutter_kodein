import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

//Declaration Font Style
final fontStyle = GoogleFonts.montserrat(
  letterSpacing: 1,
  fontWeight: FontWeight.w500,
);

//Declaration Colors
const blue = Color.fromRGBO(57, 119, 252, 1);
const white = CupertinoColors.white;
const black = CupertinoColors.black;

//Resubale Widget
class Reus1 extends StatefulWidget {
  const Reus1({
    Key? key,
    required this.icon,
    this.label,
  }) : super(key: key);

  final Widget icon;
  final String? label;

  @override
  State<Reus1> createState() => _Reus1State();
}

class _Reus1State extends State<Reus1> {
  //Declaration Font Style
  final fontStyle1 = GoogleFonts.montserrat(
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

class Reus2 extends StatefulWidget {
  const Reus2({
    Key? key,
    required this.value,
    this.label,
  }) : super(key: key);

  final String value;
  final String? label;

  @override
  State<Reus2> createState() => _Reus2State();
}

class _Reus2State extends State<Reus2> {
  //Declaration Font Style
  final fontStyle2 = GoogleFonts.montserrat(
    letterSpacing: 1,
    fontWeight: FontWeight.w500,
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(widget.value.toString(), style: fontStyle),
        const SizedBox(
          height: 2.0,
        ),
        Text(widget.label.toString(), style: fontStyle),
      ],
    );
  }
}
