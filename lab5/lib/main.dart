import 'package:flutter/material.dart';
import 'detalle_pantalla.dart'; 
import 'sobre_pantalla.dart'; 

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;

  const MyHomePage({super.key, required this.title});

  @override
  State<MyHomePage> createState() {
    return _MyHomePageState();
  }
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              title: Text('Detalle'),
              onTap: () {
                // Navegar a la pantalla de Detalle
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DetallePantalla()),
                );
              },
            ),
            ListTile(
              title: Text('Sobre'),
              onTap: () {
                // Navegar a la pantalla de Sobre
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SobrePantalla()),
                );
              },
            ),
            ListTile(
              title: Text('Auditoría'),
              onTap: () {
                // Navegar a la pantalla de Auditoría
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AuditoriaPantalla()),
                );
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('You have pushed the button this many times:'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}

// Auditoría Pantalla
class AuditoriaPantalla extends StatelessWidget {
  const AuditoriaPantalla({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Auditoría'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Historial de acceso del usuario'),
            const SizedBox(height: 20),
            // Aquí podrías mostrar la lista de accesos, por ejemplo
            ElevatedButton(
              onPressed: () {
                // Agrega aquí la lógica para manejar el acceso
                print('Acceso registrado');
              },
              child: const Text('Registrar Acceso'),
            ),
          ],
        ),
      ),
    );
  }
}
