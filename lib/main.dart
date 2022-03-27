import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'logout/register.dart';

void main() {
  runApp(const MyApp());
  doWhenWindowReady(() {
    const initialSize = Size(900, 450);
    appWindow.minSize = initialSize;
    appWindow.size = initialSize;
    appWindow.show();
  });
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  MaterialApp build(BuildContext context) {
    return MaterialApp(
        title: 'Friends Forever',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            backgroundColor: Colors.black,
            textTheme: Theme.of(context).textTheme.apply(
                  bodyColor: Colors.white,
                  displayColor: Colors.white,
                ),
            inputDecorationTheme: Theme.of(context)
                .inputDecorationTheme
                .copyWith(iconColor: Colors.white)),
        home: Scaffold(
            body: Container(
                alignment: Alignment.topLeft,
                height: double.infinity,
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Color(0XFF282B36), Color(0XFF383E4D)])),
                child: DefaultTextStyle(
                    style: GoogleFonts.varelaRound(),
                    child: Stack(
                      children: <Widget>[
                        WindowTitleBarBox(
                            child: Row(children: <Widget>[
                          Expanded(child: MoveWindow()),
                          const WindowButtons()
                        ])),
                        const Register(),
                      ],
                    )))));
  }
}

class WindowButtons extends StatelessWidget {
  const WindowButtons({Key? key}) : super(key: key);

  @override
  Row build(BuildContext context) {
    return Row(children: <Widget>[
      MinimizeWindowButton(
          colors: WindowButtonColors(iconNormal: Colors.white)),
      MaximizeWindowButton(
          colors: WindowButtonColors(iconNormal: Colors.white)),
      CloseWindowButton(
          colors: WindowButtonColors(
              iconNormal: Colors.white, mouseOver: Colors.red))
    ]);
  }
}
