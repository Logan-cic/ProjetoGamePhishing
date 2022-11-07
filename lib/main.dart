import 'dart:js';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:projeto_game_phishing/auth_service.dart';
import 'package:projeto_game_phishing/widgets/auth_check.dart';
import 'package:provider/provider.dart';

import 'home/home_page.dart';

void main() async {
  await Firebase.initializeApp();

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => AuthService())
      ],
      child: const  AuthCheck()
    ),
  );
}
