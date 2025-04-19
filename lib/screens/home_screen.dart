import 'package:flutter/material.dart';
import '../widgets/custom_column.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final widerSide = screenWidth > screenHeight ? screenWidth : screenHeight;

    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: CustomColumn(
        children: [
          Text(
            'Catálogo De Películas APP',
            style: Theme.of(context).textTheme.headlineLarge,
            textAlign: TextAlign.center,
          ),
          Center(
            child: Icon(Icons.theaters_rounded, size: widerSide / 4),
          ),
          Text(
            'Bienvenido a nuestro catálogo de películas',
            style: Theme.of(context).textTheme.headlineLarge,
            textAlign: TextAlign.center,
          ),
          TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/catalog');
              },
              child: Text(
                "VER CATÁLOGO",
                style: Theme.of(context).textTheme.labelLarge,
              ))
        ],
      ),
    );
  }
}
