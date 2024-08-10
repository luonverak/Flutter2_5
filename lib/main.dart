import 'package:flutter/material.dart';
import 'package:flutter2_5/presentations/track_spending/trackspending_start_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TrackSpendingStartScreen(),
    );
  }
}
