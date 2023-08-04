import 'package:exemplo/managers/session_manager.dart';
import 'package:exemplo/pagers/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

final auth = GetIt.I.get<SessionManager>();

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(auth.user!.name),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // final SessionManager sessionManager = getIt();
            // sessionManager.user = User('Gigio Costa');

            Navigator.of(context).push(
              MaterialPageRoute(builder: (_) => const HomePage()),
            );
          },
          child: const Text('Entrar'),
        ),
      ),
    );
  }
}
