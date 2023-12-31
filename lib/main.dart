import 'package:exemplo/injection/injection.dart';
import 'package:exemplo/pagers/login_page.dart';
import 'package:flutter/material.dart';

void main() {
  configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Inject',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.teal),
      home: const LoginPage(),
    );
  }
}
