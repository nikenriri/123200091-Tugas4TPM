import 'dart:math';
import 'package:flutter/material.dart';

class TriangleCalculatorPage extends StatefulWidget {
  const TriangleCalculatorPage({Key? key}) : super(key: key);

  @override
  State<TriangleCalculatorPage> createState() => _TriangleCalculatorState();
}

class _TriangleCalculatorState extends State<TriangleCalculatorPage> {
  TextEditingController sideATextEditingController = TextEditingController();
  TextEditingController sideBTextEditingController = TextEditingController();
  TextEditingController sideCTextEditingController = TextEditingController();

  double? luas;
  double? keliling;

  void calculate() {
    double a = double.tryParse(sideATextEditingController.text) ?? 0;
    double b = double.tryParse(sideBTextEditingController.text) ?? 0;
    double c = double.tryParse(sideCTextEditingController.text) ?? 0;

    double s = (a + b + c) / 2;
    luas = sqrt(s * (s - a) * (s - b) * (s - c));
    keliling = a + b + c;

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Luas & Keliling Segitiga'),
        backgroundColor: Colors.blue.shade200,
      ),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: TextField(
                controller: sideATextEditingController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Masukkan nilai sisi A',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)
                  ),
                  contentPadding: const EdgeInsets.symmetric(
                      vertical: 20,
                      horizontal: 25
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: TextField(
                controller: sideBTextEditingController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Masukkan nilai sisi B',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)
                  ),
                  contentPadding: const EdgeInsets.symmetric(
                      vertical: 20,
                      horizontal: 25
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: TextField(
                controller: sideCTextEditingController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Masukkan nilai sisi C',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)
                  ),
                  contentPadding: const EdgeInsets.symmetric(
                      vertical: 20,
                      horizontal: 25
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: calculate,
              child: Text('Hitung'),
            ),
            SizedBox(height: 20),
            if (luas != null && keliling != null)
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'Luas: $luas',
                    style: TextStyle(fontSize: 18),
                  ),
                  Text(
                    'Keliling: $keliling',
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}