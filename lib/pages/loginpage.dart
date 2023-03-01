import 'package:authentest_100/pages/registerpage.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';
import 'package:authentest_100/pages/registerpage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
      ),
      body: SafeArea(
        child: Form(
          key: _formkey,
          child: Padding(
            padding: const EdgeInsets.all(32.0),
            child: ListView(children: [
              TextFormField(
                controller: _passwodController,
                decoration: const InputDecoration(labelText: "Email"),
              ),
              TextFormField(
                controller: _passwodController,
                decoration: const InputDecoration(labelText: "Password"),
                obscureText: true,
              ),
              ElevatedButton(onPressed: () {}, child: const Text('"Login')),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const register(),
                      ));
                },
                child: null,
              ),
            ]),
          ),
        ),
      ),
    );
  }

  get _passwodController => _passwodController;

  get _formkey => _formkey;
}
