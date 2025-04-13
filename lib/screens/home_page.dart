import 'package:flutter/material.dart';
import '../widgets/custom_title.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var mainTitle = "Welcome to Flutter";
    var mainText = "Hello World";
    
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomTitle(text: mainTitle),
          Text(mainText),
        ],
      ),
    );
  }
} 