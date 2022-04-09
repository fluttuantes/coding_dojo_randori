import 'package:flutter/material.dart';
import 'widgets/input_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: const Color(0xFFEDEFF3),
          body: Column(
            children: [
              InputWidget(
                prefixIcon: Icons.mail,
                hintText: 'Digite seu email',
              ),
              const SizedBox(height: 16),
              InputWidget(
                prefixIcon: Icons.key,
                hintText: 'Digite sua senha',
                suffixIcon: Icons.visibility,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
