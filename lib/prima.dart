import 'package:flutter/material.dart';

class PrimeNumbersPage extends StatelessWidget {
  const PrimeNumbersPage({Key? key}) : super(key: key);

  bool isPrime(int n) {
    if (n <= 1) return false;
    if (n <= 3) return true;
    if (n % 2 == 0 || n % 3 == 0) return false;
    int i = 5;
    while (i * i <= n) {
      if (n % i == 0 || n % (i + 2) == 0) return false;
      i += 6;
    }
    return true;
  }

  List<int> generatePrimes(int count) {
    List<int> primes = [];
    int num = 2;
    while (primes.length < count) {
      if (isPrime(num)) primes.add(num);
      num++;
    }
    return primes;
  }

  @override
  Widget build(BuildContext context) {
    final List<int> primes = generatePrimes(50);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Bilangan Prima'),
        backgroundColor: Colors.blue.shade200,
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 5, //jml kolom
          crossAxisSpacing: 10.0, //spasi antar kolom
          mainAxisSpacing: 10.0, //spasi antar baris
        ),
        padding: const EdgeInsets.all(30),
        itemCount: primes.length,
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
              color: Colors.blue.shade200,
              border: Border.all(color: Colors.blue, width: 2.0),
              borderRadius: BorderRadius.circular(8.0)
            ),
            child: Center(
              child: Text(
                primes[index].toString(),
                style: TextStyle(fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
          );
        },
      ),
    );
  }
}
