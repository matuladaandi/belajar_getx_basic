import 'package:flutter/material.dart';

void main() {
  // ignore: prefer_const_constructors
  runApp(MyApp());
}

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

// ignore: must_be_immutable
class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Learning Getx Life Cycle'),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () => Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) => const OtherPage(),
                    ),
                  ),
              icon: const Icon(Icons.refresh))
        ],
      ),
      body: Center(
        child: CountWidget(count: count),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            count++;
          });
        },
      ),
    );
  }
}

class CountWidget extends StatefulWidget {
  final int count;
  CountWidget({super.key, required this.count});

  @override
  State<CountWidget> createState() => _CountWidgetState();
}

class _CountWidgetState extends State<CountWidget> {
  @override
  void didChangeDependencies() {
    print('didChangeDependencies');
    super.didChangeDependencies();
  }

  @override
  void didUpdateWidget(covariant CountWidget oldWidget) {
    print('old  widget :  $oldWidget -- didUpdateWidget');
    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    // untuk clearkan
    print('dispose');
    super.dispose();
  }

  @override
  void initState() {
    print('initState');
    super.initState();
  }

  Widget build(BuildContext context) {
    return Text(
      'Angka ${widget.count}',
      style: const TextStyle(fontSize: 35),
    );
  }
}

class OtherPage extends StatelessWidget {
  const OtherPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Other Page'),
        centerTitle: true,
      ),
    );
  }
}
