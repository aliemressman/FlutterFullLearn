import 'package:flutter/material.dart';
import 'package:flutter_full_learn/202/theme/light_theme.dart';
import 'package:flutter_full_learn/303/call_back_learn.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: LightTheme().theme,
        /*ThemeData.dark().copyWith(
            progressIndicatorTheme: const ProgressIndicatorThemeData(
                color: Color.fromARGB(255, 175, 137, 76), circularTrackColor: Colors.white),
            cardTheme: const CardTheme(
              shape: RoundedRectangleBorder(
                  side: BorderSide(color: Colors.transparent, width: 5),
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  )),
            ),
            inputDecorationTheme: const InputDecorationTheme(
                filled: true,
                fillColor: Colors.green,
                iconColor: Color.fromARGB(255, 36, 15, 13),
                labelStyle: TextStyle(color: Color.fromARGB(255, 147, 35, 97)),
                border: OutlineInputBorder()),
            appBarTheme: const AppBarTheme(
              centerTitle: true,
              backgroundColor: Color.fromARGB(255, 0, 0, 0),
              titleTextStyle: TextStyle(fontStyle: FontStyle.italic),
              elevation: 0,
              systemOverlayStyle: SystemUiOverlayStyle.light,
            )),*/
        home: const CallBackLearn());
  }
}
