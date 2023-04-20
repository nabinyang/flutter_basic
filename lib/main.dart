import 'package:flutter/material.dart';
import 'package:flutter_kakaotalk_clone/screens/main_screen.dart';
import 'package:flutter_kakaotalk_clone/screens/splash_screen.dart';

void main() {
  runApp(
    MaterialApp(
      home: FutureBuilder(
          future: Future.delayed(
              const Duration(seconds: 3), () => "Data import completed."),
          builder: (context, snapshot) {
            return AnimatedSwitcher(
              duration: const Duration(milliseconds: 1000),
              child: _splashLoadingWidget(snapshot),
            );
          }),
    ),
  );
}

Widget _splashLoadingWidget(AsyncSnapshot<Object?> snapshot) {
  if (snapshot.hasError) {
    return const Text("Error!!");
  } else if (snapshot.hasData) {
    return MainScreen();
  } else {
    return const SplashScreen();
  }
}
