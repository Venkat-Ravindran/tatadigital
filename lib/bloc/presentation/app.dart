import 'package:flutter/material.dart';
import 'package:tata_digital/bloc/presentation/login.dart';
import 'home.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.teal),
      home: const Scaffold(
        body: LoginScreen(),
      ),
    );
  }
}
