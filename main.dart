import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 13, 212, 226)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
      
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  // ignore: non_constant_identifier_names
  bool ImageDisplay = true;

  // ignore: non_constant_identifier_names
  String Photo='https://media.istockphoto.com/id/1175975898/photo/angel-of-independence.jpg?s=612x612&w=0&k=20&c=mSlmpRKphhGxOUuaKXzLT4aqBhWzcDJF9KqcDyN6aA4=';

  void changeImage() {
    setState(() {
      if (ImageDisplay == true) {
        ImageDisplay = false;
        Photo = 'https://www.peterktravels.com/wp-content/uploads/2017/04/DSC09321-lr-2.jpg';
      } else {
        ImageDisplay = true;
        Photo = 'https://media.istockphoto.com/id/1175975898/photo/angel-of-independence.jpg?s=612x612&w=0&k=20&c=mSlmpRKphhGxOUuaKXzLT4aqBhWzcDJF9KqcDyN6aA4=';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        
        title: Center(
          child: Text(widget.title),
        )
        
      ),
      body: Center(
        
        child: Column(
          
          mainAxisAlignment: MainAxisAlignment.center,

          children: <Widget>[
            Image.network(Photo),
            const Text(
              'You have pushed the button this many times:',
            ),
            
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),

            TextButton(
              onPressed: _incrementCounter,
              style: TextButton.styleFrom(
                backgroundColor: Colors.greenAccent[400]
              ),
              child: const Text(
                'Increment',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                )
              ),
            ),
            
            ElevatedButton(
              onPressed: changeImage,
              style: TextButton.styleFrom(
                backgroundColor: Colors.pink
              ),
              child: const Text(
                'Toggle Image',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                )
              ),
            ),
          ],
        ),
      ),
    );
  }
}
