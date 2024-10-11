import 'package:flutter/material.dart';

class DetallePantalla extends StatelessWidget {
  const DetallePantalla({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalle'),
      ),
      body: Center(
        child: const Text('Esta es la pantalla de Detalle.'),
      ),
    );
  }
}
