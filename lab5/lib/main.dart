import 'package:flutter/material.dart';

void main() 
{
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
    print('create state');
    return _MyHomePageState();
  }
}

class _MyHomePageState extends State<MyHomePage> 
{
  int _counter = 0;

  @override
  void initState() //Este método se llama cuando el widget se crea por primera vez. Acá se pueden inicializar los datos!!!
  {
    super.initState();
    print('initState inicializado correctamente'); //Este mensaje se debería ver en la consola cuando se ejecute
  }

  @override
  void didChangeDependencies() //Se usa cuando se cambian las dependencias de los widgets 
  {
    super.didChangeDependencies();
    print('didChangeDependencies dependencias del widget cambiando');
  }

  @override
  void didUpdateWidget(covariant MyHomePage oldWidget) 
  {
    super.didUpdateWidget(oldWidget);
    print('didUpdateWidget: el widget fue actualizado');
  }

  @override
  void reassemble() 
  {
    super.reassemble();
    print('reassemble: la aplicación fue reconstruida durante un hot reload');
  }

  void _incrementCounter() //El método incrementa el valor del _counter 
  {
    setState(() //avisa q el widget cambió y debe reconstruirse
    {
      _counter++;
      print('contadoooor $_counter'); // el setState causa que el widget se vuelva a construir (se incrementa el contador)
    });
  }

  @override
  Widget build(BuildContext context) 
  {
    print('build: widget se está construyendo');
    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            onPressed: _incrementCounter,
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
          const SizedBox(width: 20), // Espacio entre botones
          FloatingActionButton(
            heroTag: null, // Esto desactiva la animación de Hero
            onPressed: () 
            {
              Navigator.pop(context); // Volver a la página anterior
            },
            tooltip: 'Volver',
            child: const Icon(Icons.arrow_back),
          ),
        ],
      ),
    );
  }

  @override
  void deactivate() //Se llama cuando el widget está a punto de ser eliminado, como cuando se cambiaa de pantalla!!
  {
    print('deactivate: widget se desactiva cuando se cambia de pantalla');
    super.deactivate();
  }

  @override
  void dispose() //Acá se llama cuando el widget se va a eliminar permanentementee
  {
    print('dispose: widget eliminado');
    super.dispose();
  }
}

// Segunda pantalla
class SegundaPantalla extends StatelessWidget //widget simple que muestra la segunda pantalla
{
  const SegundaPantalla({super.key});

  @override
  Widget build(BuildContext context) 
  {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pantalla 2"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Text("HOLAAAAAAAAA!!! esta es la segunda pantalla :3"),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        heroTag: null, // Esto desactiva la animación de Hero
        onPressed: () 
        {
          Navigator.pop(context); // Volver a la página anterior
        },
        tooltip: 'Volver',
        child: const Icon(Icons.arrow_back),
      ),
    );
  }
}
