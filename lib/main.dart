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
          title: const Text("Product Details"),
          backgroundColor: Colors.green[500],
        ),
      body: Card(
        color: Colors.white,
        child: Column(
          children: [
            ListTile(
              leading: Image.asset('image/Asus.png'),
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
            ),ListTile(
              leading: Image.asset('image/Asus.png'),
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
            ),ListTile(
              leading: Image.asset('image/Asus.png'),
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
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Choose Payment Method'),
      ),
      body: Column(
        children: [
          const SizedBox(height: 16),
          const Text('Choose Payment Method:', style: TextStyle(fontSize: 16)),
          const SizedBox(height: 16),
          const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              PaymentMethodButton(icon: 'image/Bkash.png'),
              SizedBox(width: 16),
              PaymentMethodButton(icon: 'image/Nagad.png'),
              SizedBox(width: 16),
              PaymentMethodButton(icon: 'image/Visa.png'),
              SizedBox(width: 16),
              PaymentMethodButton(icon: 'image/Mastercard.png'),
            ],
          ),
          const SizedBox(height: 16),
          DropdownButton<String>(
            value: 'Select City for delivery',
            onChanged: (value) {},
            items: const [
              DropdownMenuItem(
                value: 'Select City for delivery',
                child: Text('Select City for delivery'),
              ),
              DropdownMenuItem(
                value: 'Dhaka',
                child: Text('Dhaka'),
              ),
              DropdownMenuItem(
                value: 'Chittagong',
                child: Text('Chittagong'),
              ),
              DropdownMenuItem(
                value: 'Rajshahi',
                child: Text('Rajshahi'),
              ),
              DropdownMenuItem(
                value: 'Barisal',
                child: Text('Barisal'),
              ),
            ],
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('Go Back'),
          ),
        ],
      ),
    );
  }
}
class PaymentMethodButton extends StatelessWidget {
  const PaymentMethodButton({
    Key? key,
    required this.icon,
  }) : super(key: key);

  final String icon;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.black),
        ),
        child: Image.asset(icon), // Replace 'assets/bkash.png' with the actual path to your icon
      ),
    );
  }
}
