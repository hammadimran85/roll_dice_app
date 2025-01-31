import 'package:flutter/material.dart';
import 'package:roll_dice_app/widgets/gradient_container.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Roll Dice App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 87, 183, 58)),
        useMaterial3: true,
      ),
      home: const Scaffold(
        body: GradientContainer(),
      ),
    );
  }
}
