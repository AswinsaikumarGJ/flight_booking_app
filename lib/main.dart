import 'package:flight_booking_app/Screens/Screenfive.dart';
import 'package:flight_booking_app/Screens/screeneight.dart';
import 'package:flight_booking_app/Screens/screenfour.dart';
import 'package:flight_booking_app/Screens/screenone.dart';
import 'package:flight_booking_app/Screens/screenseven.dart';
import 'package:flight_booking_app/Screens/screensix.dart';
import 'package:flight_booking_app/Screens/screenthree.dart';
import 'package:flight_booking_app/Screens/screentwo.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flight',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ScreenEight(),
    );
  }
}

