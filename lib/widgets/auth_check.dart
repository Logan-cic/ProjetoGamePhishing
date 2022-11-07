import 'package:flutter/material.dart';
import 'package:projeto_game_phishing/auth_service.dart';
import 'package:projeto_game_phishing/home/home_page.dart';
import 'package:provider/provider.dart';

import '../screens/login_page.dart';

class AuthCheck extends StatefulWidget {
  const AuthCheck({super.key});

  @override
  State<AuthCheck> createState() => _AuthCheckState();
}

class _AuthCheckState extends State<AuthCheck> {
  @override
  Widget build(BuildContext context) {
    AuthService auth = Provider.of<AuthService>(context);

    if (auth.isLoading)
      return loading();
    else if (auth.usuario == null)
      return LoginPage();
    else
      return HomePage();
  }

  loading() {
    return const Scaffold(
      body: Center(child: CircularProgressIndicator()),
    );
  }
}
