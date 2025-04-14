import 'package:flutter/material.dart';
import '../widgets/custom_column.dart';
import '../widgets/styled_text.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final widerSide = screenWidth > screenHeight ? screenWidth : screenHeight;

    return Scaffold(
      body: SafeArea(
        child: CustomColumn(
          children: [
            const StyledText(
              'Generic Pokedex App',
              styleType: TextStyleType.displayLarge,
              textAlign: TextAlign.center,
            ),
            Center(
              child: Icon(
                Icons.catching_pokemon_rounded,
                size: widerSide / 4,
                color: Color.fromARGB(255, 223, 19, 19),
              ),
            ),
            const StyledText(
              'Bienvenido a Generic Pokedex App',
              styleType: TextStyleType.headlineLarge,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
