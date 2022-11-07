import 'package:flutter/material.dart';
import 'package:projeto_game_phishing/auth_service.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final formKey = GlobalKey<FormState>();
  final email = TextEditingController();
  final senha = TextEditingController();

  bool isLogin = true;
  late String titulo;
  late String actionButton;
  late String toggleButton;
  bool loading = false;

  @override
  void initState() {
    super.initState();
    setFormAction(true);
  }

  setFormAction(bool action) {
    setState(() {
      isLogin = action;

      if (isLogin) {
        titulo = "Bem vindo";
        actionButton = "Login";
        toggleButton = "Ainda não tem conta? Cadastre-se agora";
      } else {
        titulo = "Crie sia conta";
        actionButton = "Cadastrar";
        toggleButton = "Voltar ao Login";
      }
    });
  }

  login() async {
    setState((() => loading = true));
    try {
      await context.read<AuthService>().login(email.text, senha.text);
    } on AuthExeption catch (e) {
      setState((() => loading = false));
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(e.message)));
    }
  }

  registrar() async {
    setState((() => loading = true));
    try {
      await context.read<AuthService>().registrar(email.text, senha.text);
    } on AuthExeption catch (e) {
      setState((() => loading = false));
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(e.message)));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 100),
          child: Form(
            key: formKey,
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(
                titulo,
                style: const TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  letterSpacing: -1.5,
                ),
              ),
              Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: TextFormField(
                    controller: email,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "E-mail",
                    ),
                    keyboardType: TextInputType.emailAddress,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Informe o e-mail corretamente!';
                      }
                      return null;
                    },
                  )),
              Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 12.0, horizontal: 24.0),
                  child: TextFormField(
                    controller: senha,
                    obscureText: true,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Senha",
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Informe sua senha!';
                      } else if (value.length < 6) {
                        return 'Sua senha deve ter no mínimo 6 Caracteres';
                      }
                      return null;
                    },
                  )),
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: ElevatedButton(
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      if (isLogin) {
                        login();
                      } else {
                        registrar();
                      }
                    }
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: (loading)
                        ? [
                            Padding(
                              padding: EdgeInsets.all(16.0),
                              child: SizedBox(
                                width: 24.0,
                                height: 24.0,
                                child: CircularProgressIndicator(color: Colors.white,),
                              ),
                            )
                          ]
                        : [
                            Icon(Icons.check),
                            Padding(
                              padding: EdgeInsets.all(16.0),
                              child: Text(
                                actionButton,
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                            TextButton(
                                onPressed: (() => setFormAction(!isLogin)),
                                child: Text(toggleButton))
                          ],
                  ),
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
