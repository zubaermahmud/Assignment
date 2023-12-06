import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}



class MyApp extends StatelessWidget{
  const MyApp({super.key});


  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      home: FirstPage(),
    );
  }
}
class FirstPage extends StatelessWidget{
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("My first Flutter App"),
          backgroundColor: Colors.green[500],
        ),
      body: Card(
        color: Colors.white,
        child: Column(
          children: [
            ListTile(
              leading: Image.asset("assets/asus.png"),
              title: const Text("Asus TUF Gaming A15",style: TextStyle(fontSize: 20),),
              subtitle: const Text("A laptop for high performance gaming"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SecondPage()),
                );
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.blue[900]),
              ),
              child: const Text("Buy Now"),
            ),
          ],
        ),
      ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget{
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context){
    return const MaterialApp(

    );
  }
}