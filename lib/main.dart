import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyAppState(),
      child: MaterialApp(
        title: 'Inicio Desarrollo',
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        ),
        home: MyHomePage(),
      ),
    );
  }
}

class MyAppState extends ChangeNotifier {}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var mainTitle = "Welcome to Flutter";
    var mainText = "Hello World";
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Title(mainTitle: mainTitle),
          Text(mainText),
        ],
      ),
    );
  }
}

class Title extends StatelessWidget {
  const Title({
    super.key,
    required this.mainTitle,
  });

  final String mainTitle;

  @override
  Widget build(BuildContext context) {
    return Text(
      mainTitle,
      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
    );
  }
}
