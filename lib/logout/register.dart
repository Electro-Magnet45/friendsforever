import 'package:flutter/material.dart';
import 'package:friendsforever/components.dart';
import 'package:google_fonts/google_fonts.dart';

class Register extends StatelessWidget {
  const Register({Key? key}) : super(key: key);

  @override
  Padding build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(left: 50, top: 20),
      child: SingleChildScrollView(
        child: Column(children: <Widget>[
          const NavBar(),
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: <
              Widget>[
            SizedBox(height: _size.height / 4.5),
            Row(children: const <Text>[
              Text("Create new account",
                  style: TextStyle(fontSize: 52, fontWeight: FontWeight.bold)),
              Text('.', style: TextStyle(fontSize: 42, color: Colors.blue))
            ]),
            const SizedBox(height: 20),
            Row(mainAxisSize: MainAxisSize.min, children: <Widget>[
              hintText(text: ' Already A Member? ', size: 16),
              const MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: Text('Log In',
                      style: TextStyle(color: Colors.blue, fontSize: 16)))
            ]),
            const SizedBox(height: 40),
            SizedBox(
              width: _size.width / 2.5,
              child: Column(children: <Widget>[
                Row(children: const <Widget>[
                  TextInput(placeHolder: 'First Name', icon: Icons.person),
                  SizedBox(width: 20),
                  TextInput(placeHolder: 'Last Name', icon: Icons.person)
                ]),
                const SizedBox(height: 20),
                Row(children: const <TextInput>[
                  TextInput(placeHolder: 'Email', icon: Icons.email)
                ]),
                const SizedBox(height: 20),
                Row(children: const <TextInput>[
                  TextInput(
                      placeHolder: 'Password', icon: Icons.lock, password: true)
                ]),
                const SizedBox(height: 40),
                Row(children: <Widget>[
                  Expanded(
                      child: submitButton('Cancel', const Color(0XFF333745))),
                  const SizedBox(width: 10),
                  Expanded(child: submitButton('Create Account', Colors.blue)),
                ]),
              ]),
            ),
          ])
        ]),
      ),
    );
  }

  OutlinedButton submitButton(String title, Color color) {
    return OutlinedButton(
      onPressed: () {},
      child: Text(title, style: const TextStyle(color: Colors.white)),
      style: OutlinedButton.styleFrom(
          backgroundColor: color,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20)),
    );
  }
}

class TextInput extends StatelessWidget {
  const TextInput(
      {Key? key,
      required this.placeHolder,
      required this.icon,
      this.password = false})
      : super(key: key);
  final String placeHolder;
  final IconData icon;
  final bool password;

  @override
  Expanded build(BuildContext context) {
    return Expanded(
      child: TextField(
        obscureText: password ? true : false,
        style: GoogleFonts.poppins(),
        decoration: InputDecoration(
            border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(16)),
            focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(width: 2, color: Colors.blue),
                borderRadius: BorderRadius.circular(16)),
            fillColor: const Color(0XFF333745),
            hoverColor: const Color(0XFF3D414B),
            labelText: placeHolder,
            hintText: placeHolder,
            hintStyle: const TextStyle(color: Colors.grey),
            labelStyle: const TextStyle(color: Colors.white),
            floatingLabelStyle: const TextStyle(color: Colors.blue),
            suffixIcon: Icon(icon),
            contentPadding: const EdgeInsets.all(20),
            filled: true),
      ),
    );
  }
}
