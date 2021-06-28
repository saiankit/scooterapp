import 'package:flutter/material.dart';
import 'package:scooterapp/screens/homeScreen.dart';
import 'package:scooterapp/utilities/size_config.dart';
import 'package:scooterapp/utilities/styling.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        SizeConfig().init(constraints);
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: AppTheme.lightTheme,
          home: HomeScreen(),
        );
      },
    );
  }
}
