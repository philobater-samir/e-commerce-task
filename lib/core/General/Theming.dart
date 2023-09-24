import 'package:flutter/material.dart';

ThemeData AppTheme() =>
    ThemeData
      (
      textTheme: TextTheme (
        bodyLarge: TextStyle (
          color: Colors.white,
          fontWeight: FontWeight.w500,
          fontSize: 35
        ),
        bodySmall: TextStyle (
            color: Colors.black,
            fontWeight: FontWeight.w300,
            fontSize: 20
        ),
        bodyMedium: TextStyle (
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 18
        ),


      ),
    );