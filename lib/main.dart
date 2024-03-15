import 'package:flutter/material.dart';
import 'package:myur/trips.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});

  final ValueNotifier<bool> darkMode = ValueNotifier(false);

  @override
  Widget build(BuildContext context) {

    return ValueListenableBuilder<bool>(
        valueListenable: darkMode,
        builder: (context, value, child) {
          var darkModeTheme = value;

          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: darkModeTheme == false ?
            ThemeData(
              primaryColor:  const Color(0xFF031542),
              hintColor:  Color(0xFF463d90),
              secondaryHeaderColor: const Color(0xFF031542),
              textTheme: TextTheme(
                bodyLarge: const TextStyle(color: Colors.white),
                bodyMedium: TextStyle(color: Colors.grey.shade400,),
              ),
              elevatedButtonTheme: ElevatedButtonThemeData(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith<Color>(
                        (Set<MaterialState> states) {
                      if (states.contains(MaterialState.pressed)) {
                        return const Color(0xFF8e5cff);
                      }
                      return const Color(0xFF031542);
                    },
                  ),
                ),
              ),
              sliderTheme: const SliderThemeData(
                valueIndicatorTextStyle: TextStyle(
                  color: Colors.white,
                ),
              ),
              colorScheme: const ColorScheme(
                background: Color(0xFF555555),
                brightness: Brightness.dark,
                primary: Color(0xFF3b3b3b),
                onPrimary: Color(0xFF656565),
                secondary:  Colors.white,
                onSecondary: Color(0xFF3b3b3b),
                onError: Colors.blue,
                onBackground: Colors.white,
                onSurface: Colors.black,
                surface: Colors.black,
                error: Colors.red,
              ),
              iconTheme: const IconThemeData(
                  color: Colors.white
              ),
            ) :
            ThemeData(
              primaryColor:  const Color(0xFF031542),
              hintColor:  Color(0xFF463d90),
              secondaryHeaderColor: const Color(0xFF031542),
              textTheme: const TextTheme(
                bodyLarge: TextStyle(color: Colors.black),
                bodyMedium: TextStyle(color: Colors.grey,),
              ),
              elevatedButtonTheme: ElevatedButtonThemeData(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith<Color>(
                        (Set<MaterialState> states) {
                      if (states.contains(MaterialState.pressed)) {
                        return const Color(0xFF8e5cff);
                      }
                      return const Color(0xFF031542);
                    },
                  ),
                ),
              ),
              sliderTheme: const SliderThemeData(
                valueIndicatorTextStyle: TextStyle(
                  color: Colors.black,
                ),
              ),
              colorScheme:  ColorScheme(
                background: Colors.white,
                brightness: Brightness.light,
                primary: Colors.grey.shade500,
                onPrimary: Colors.white,
                secondary:  const Color(0xFF656565),
                onSecondary: Colors.white,
                onError: Colors.blue,
                onBackground: Colors.black,
                onSurface: Colors.black,
                surface: Colors.blue,
                error: Colors.red,
              ),
              iconTheme: const IconThemeData(
                  color: Colors.black
              ),
            ),
            home: Trips(darkMode: darkMode,),
          );
        }
    );
  }
}
