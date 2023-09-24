import 'package:e_commerce_task_philobater_samir/core/General/Theming.dart';
import 'package:e_commerce_task_philobater_samir/features/presentation/screens/App_Screens/basic_screen.dart';
import 'package:e_commerce_task_philobater_samir/features/presentation/screens/Auth/login_Screen.dart';
import 'package:flutter/material.dart';

class myApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme(),
      initialRoute: loginScreen.routeName,
      routes:
      {
        loginScreen.routeName : (context) => loginScreen(),
        basicScreen.routeName :(context)=> basicScreen(),
      },


    );
  }
}
