import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Text hintText({required String text, double size = 0}) {
  if (size == 0) return Text(text, style: const TextStyle(color: Colors.grey));
  return Text(text, style: TextStyle(color: Colors.grey, fontSize: size));
}

class NavBar extends StatelessWidget {
  const NavBar({
    Key? key,
  }) : super(key: key);

  @override
  DefaultTextStyle build(BuildContext context) {
    return DefaultTextStyle(
      style: GoogleFonts.poppins(),
      child: Row(children: <Widget>[
        Container(
            height: 24,
            width: 24,
            decoration: const BoxDecoration(
                shape: BoxShape.circle, color: Colors.blue)),
        const SizedBox(width: 20),
        const Text('Friends Forever', style: TextStyle(fontSize: 20)),
        const Spacer(),
        const MouseRegion(
            cursor: SystemMouseCursors.click,
            child: Text('Login', style: TextStyle(color: Colors.grey))),
        const Spacer(),
        const MouseRegion(
            cursor: SystemMouseCursors.click,
            child: Text('Register', style: TextStyle(color: Colors.grey))),
        const Spacer(flex: 8)
      ]),
    );
  }
}
