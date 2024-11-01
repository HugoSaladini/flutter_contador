import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int count = 0;

  void decrement() {
    setState(() {
      count--;
    });
    print(count);
  }

  void increment() {
    setState(() {
      count++;
    });
    print(count);
  }

  bool get isEmpty => count == 0;
  bool get isFull => count == 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/image/image.jpg'),
              fit: BoxFit.cover,
            )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              isFull ? 'LOTADO!!' : 'Pode Entrar',
              style: const TextStyle(
                fontSize: 26,
                color: Colors.white70,
                fontWeight: FontWeight.w500,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(40),
              child: Text(
                 count.toString(),
                style: TextStyle( fontSize: 100 , color: isFull? Colors.red : Colors.white),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: isEmpty? null : decrement,
                  style: TextButton.styleFrom(
                    backgroundColor: isEmpty ? Colors.red.withOpacity(0.1) : Colors.white.withOpacity(0.70),
                    fixedSize: const Size(100, 100),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: const Text(
                    'Saiu',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                ),
                const SizedBox(width: 25),
                TextButton(
                  onPressed: isFull? null : increment,
                  style: TextButton.styleFrom(
                    backgroundColor: isFull ? Colors.amber.withOpacity(0.1) : Colors.white.withOpacity(0.70),
                    fixedSize: const Size(100, 100),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: const Text(
                    'Entrou',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),);
    (
    );
  }
}

