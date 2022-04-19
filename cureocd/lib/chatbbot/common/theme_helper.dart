import 'package:flutter/material.dart';

class ThemeHelper {
  static Color primaryColor = const Color.fromARGB(255, 0, 163, 173);
  static Color accentColor = const Color(0xff20aebe);
  static Color shadowColor = const Color(0xffa2a6af);

  static ThemeData getThemeData() {
    return ThemeData(
      fontFamily: 'Baloo',
      primarySwatch: Colors.teal,
      colorScheme: const ColorScheme.light(
          // ignore: unnecessary_const
          primary: const Color.fromARGB(255, 0, 163, 173),
          secondary: Colors.teal),
      textTheme: TextTheme(
          headline3: TextStyle(
            color: accentColor,
            fontFamily: 'Baloo',
          ),
          headline4: TextStyle(
            color: accentColor,
            fontFamily: 'Baloo',
          )),
    );
  }

  static BoxDecoration fullScreenBgBoxDecoration(
      {String backgroundAssetImage = "assets/Common.bg.png"}) {
    return BoxDecoration(
      image: DecorationImage(
          image: AssetImage(backgroundAssetImage), fit: BoxFit.cover),
    );
  }

  static roundBoxDeco({Color color = Colors.white, double radius = 15}) {
    return BoxDecoration(
        color: color, borderRadius: BorderRadius.all(Radius.circular(radius)));
  }
}
