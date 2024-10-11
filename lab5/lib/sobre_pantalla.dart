import 'package:flutter/material.dart';

class SobrePantalla extends StatelessWidget {
  const SobrePantalla({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sobre'),
      ),
      body: Center(
        child: const Text('Esta es la pantalla Sobre.'),
      ),
    );
  }
}
