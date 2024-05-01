import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Daftar Anggota'),
        backgroundColor: Colors.blue.shade200,
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Center(
          child: Card(
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
              side: BorderSide(
                color: Colors.blue.shade200,
              )
            ),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(height: 10),
                  const CircleAvatar(
                    backgroundImage: AssetImage(
                        'assets/niken.jpg'
                    ),
                    radius: 50,
                  ),
                  const SizedBox(height: 15),
                  const Text(
                    'Niken Riri Dwi Astuti',
                    style:
                    TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    '123200091',
                    style: TextStyle(fontSize: 18),
                  ),
                  const SizedBox(height: 30),
                  const CircleAvatar(
                    backgroundImage: AssetImage(
                        'assets/cantika.jpeg'
                    ),
                    radius: 50,
                  ),
                  const SizedBox(height: 15),
                  const Text(
                    'Cantika Dyah Wahyuningrum',
                    style:
                    TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    '123210153',
                    style: TextStyle(fontSize: 18),
                  ),
                  const SizedBox(height: 15),
                  const SizedBox(height: 10),
                  const CircleAvatar(
                    backgroundImage: AssetImage(
                        'assets/icha.jpeg'
                    ),
                    radius: 50,
                  ),
                  const SizedBox(height: 15),
                  const Text(
                    'Mutiara Angelicha Rahma',
                    style:
                    TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    '123210169',
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      ),
    );
  }
}
