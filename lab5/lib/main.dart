import 'package:flutter/material.dart';
import 'detalle_pantalla.dart'; 
import 'sobre_pantalla.dart'; 

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget 
{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) 
  {
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

class MyHomePage extends StatefulWidget 
{
  final String title;

  const MyHomePage({super.key, required this.title});

  @override
  State<MyHomePage> createState() 
  {
    return _MyHomePageState();
  }
}

class _MyHomePageState extends State<MyHomePage> 
{
  int _counter = 0;

  void _incrementCounter() 
  {
    setState(() 
    {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) 
  {
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
              onTap: () 
              {
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

// PANTALLA AUDITORIA + LISTA D ITEMS
class AuditoriaPantalla extends StatelessWidget 
{
  const AuditoriaPantalla({super.key});

  @override
  Widget build(BuildContext context) 
  {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Auditoría'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Regresar a la pantalla anterior
          },
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: <Widget>[
          ListTile(
            title: const Text('Item 1'),
            onTap: () 
            {
              print('Item 1 seleccionado'); // seleccionar el item 1
            },
          ),
          ListTile(
            title: const Text('Item 2'),
            onTap: () 
            {
              print('Item 2 seleccionado'); // seleccionar el item 2
            },
          ),
          ListTile(
            title: const Text('Item 3'),
            onTap: () 
            {
              print('Item 3 seleccionado');// seleccionar el item 3
            },
          ),
          ListTile(
            title: const Text('Item 4'),
            onTap: () 
            {
              print('Item 4 seleccionado');// seleccionar el item 4
            },
          ),
          ListTile(
            title: const Text('Item 5'),
            onTap: () 
            {
              print('Item 5 seleccionado');// seleccionar el item 5
            },
          ),
          ListTile(
            title: const Text('Item 6'),
            onTap: () 
            {
              print('Item 6 seleccionado');// seleccionar el item 6
            },
          ),
        ],
      ),
    );
  }
}
