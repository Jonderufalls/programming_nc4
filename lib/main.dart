import 'package:flutter/material.dart';

// Entry point of the Flutter app
void main() {
  runApp(const MyApp());
}

// Root widget of the app
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',

      // App-wide theme settings
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),

      // Sets the home screen of the app
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

// A StatefulWidget for the home screen
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // Title passed from MyApp to be used in the AppBar
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

// State class for the MyHomePage widget
class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  // Function that increments the counter when the FAB is pressed
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Top navigation bar of the app
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title), // Displays the passed title
      ),

      // Main body of the app
      body: const Center(
        // Displays "Hello World!" centered on the screen
        child: Text(
          'Hello World!',
          style: TextStyle(fontSize: 24), // Sets font size of the text
        ),
      ),

      // Floating button that increments the counter when pressed
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter, // Calls the increment function
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
