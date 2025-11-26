import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'register_viewmodel.dart';

class RegisterView extends StackedView<RegisterViewModel> {
  const RegisterView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    RegisterViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            color: const Color(0xFFD5D5D5),
            borderRadius: BorderRadius.circular(30),
          ),
          child: Column(
            children: [
              const SizedBox(height: 40),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: TextButton.icon(
                    onPressed: () {
                      // Action retour
                    },
                    icon: const Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                      size: 24,
                    ),
                    label: const Text(
                      'Retour',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 40),
              Expanded(
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    color: const Color(0xFFAAAAAA),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.all(30),
                      child: Column(
                        children: [
                          const SizedBox(height: 20),
                          const Text(
                            'Commencer',
                            style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                            ),
                          ),
                          const SizedBox(height: 40),
                          _buildTextField('Nom, Prénom'),
                          const SizedBox(height: 25),
                          _buildTextField('Email'),
                          const SizedBox(height: 25),
                          _buildTextField('Mot de passe', obscureText: true),
                          const SizedBox(height: 25),
                          _buildTextField('Confirmation du mot de passe',
                              obscureText: true),
                          const SizedBox(height: 50),
                          _buildButton("S'inscrire"),
                          const SizedBox(height: 30),
                          const Text(
                            'J\'ai déjà un compte ? Connexion',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          const SizedBox(height: 20),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  @override
  RegisterViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      RegisterViewModel();
}

Widget _buildTextField(String label, {bool obscureText = false}) {
  return TextField(
    obscureText: obscureText,
    style: const TextStyle(
      fontSize: 16,
      color: Colors.black,
    ),
    decoration: InputDecoration(
      labelText: label,
      labelStyle: const TextStyle(
        color: Colors.black,
        fontSize: 16,
        fontWeight: FontWeight.w400,
      ),
      floatingLabelBehavior: FloatingLabelBehavior.always,
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20),
        borderSide: const BorderSide(
          color: Colors.black,
          width: 1.5,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20),
        borderSide: const BorderSide(
          color: Colors.black,
          width: 1.5,
        ),
      ),
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 20,
      ),
    ),
  );
}

Widget _buildButton(String text) {
  return SizedBox(
    width: double.infinity,
    child: TextButton(
      onPressed: () {
        // Action inscription
      },
      style: TextButton.styleFrom(
        backgroundColor: Colors.transparent,
        padding: const EdgeInsets.symmetric(vertical: 20),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
          side: const BorderSide(
            color: Colors.black,
            width: 1.5,
          ),
        ),
      ),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 18,
          color: Colors.black,
          fontWeight: FontWeight.w400,
        ),
      ),
    ),
  );
}
