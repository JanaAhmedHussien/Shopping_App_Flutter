import 'package:flutter/material.dart';
import 'shopping_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _name = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final TextEditingController _confirmPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sign Up"),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF6A11CB), Color(0xFF2575FC)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(20),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    controller: _name,
                    decoration: const InputDecoration(
                      hintText: "Full Name",
                      filled: true,
                      fillColor: Colors.white,
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) return "Enter name";
                      if (value[0] != value[0].toUpperCase()) {
                        return "First letter must be uppercase";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 15),
                  TextFormField(
                    controller: _email,
                    decoration: const InputDecoration(
                      hintText: "Email",
                      filled: true,
                      fillColor: Colors.white,
                    ),
                    validator: (value) {
                      if (value == null || !value.contains('@')) return "Enter valid email";
                      return null;
                    },
                  ),
                  const SizedBox(height: 15),
                  TextFormField(
                    controller: _password,
                    obscureText: true,
                    decoration: const InputDecoration(
                      hintText: "Password",
                      filled: true,
                      fillColor: Colors.white,
                    ),
                    validator: (value) {
                      if (value == null || value.length < 6) {
                        return "Password must be at least 6 chars";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 15),
                  TextFormField(
                    controller: _confirmPassword,
                    obscureText: true,
                    decoration: const InputDecoration(
                      hintText: "Confirm Password",
                      filled: true,
                      fillColor: Colors.white,
                    ),
                    validator: (value) {
                      if (value != _password.text) {
                        return "Passwords do not match";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                    ),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        Navigator.of(context).pushReplacement(
                          PageRouteBuilder(
                            pageBuilder: (_, __, ___) => const ShoppingScreen(),
                            transitionsBuilder: (_, anim, __, child) {
                              return FadeTransition(opacity: anim, child: child);
                            },
                          ),
                        );
                      }
                    },
                    child: const Text("Create Account"),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
