import 'package:flutter/material.dart';
import 'package:tugas4/data_situs.dart';
import 'package:tugas4/detail_situs.dart';
import 'package:image_network/image_network.dart';

class SitusPage extends StatelessWidget {
  const SitusPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Situs Rekomendasi"),
        automaticallyImplyLeading: true,
        backgroundColor: Colors.blue.shade200,
      ),
      body: ListView.builder(
        itemCount: listSitus.length,
        itemBuilder: (context, index) {
          final DataSitus website = listSitus[index];
          return InkWell(
            onTap: (){
              Navigator.push(context,
                MaterialPageRoute(builder: (context) => DetailSitus(website: website,)
                ),
              );
            },
            child: Card (
              elevation: 4,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              margin: const EdgeInsets.all(30),
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child:GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailSitus(
                              website: website,
                            ),
                          ),
                        );
                      },
                      child: ImageNetwork(
                        image: website.imageLink,
                        height: 200,
                        width: 300,
                      ),
                    )
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Colors.transparent, Colors.black.withOpacity(0.7)],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                      ),
                      padding: const EdgeInsets.all(16),
                      child: Text(
                        website.title,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
