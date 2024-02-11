import 'package:flutter/material.dart';

class AboutUsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        title: Text('Tentang Kami'),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 213, 212, 212),
        toolbarHeight: 75,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              Container(
                alignment: Alignment.center,
                color: Color.fromARGB(255, 238, 238, 238),
                height: 300,
                child: Text(
                  'Converse Store ini adalah toko sepatu online yang didirikan pada tahun 2024 dengan tujuan untuk menyediakan sepatu Converse yang berkualitas tinggi dengan harga yang terjangkau bagi semua orang. Kami menawarkan sepatu sneakers terbaru untuk memenuhi gaya fashion generasi milenial',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.justify,
                ),
              ),
              Container(
                alignment: Alignment.center,
                color: Color.fromARGB(255, 213, 212, 212),
                height: 75,
                child: Text(
                  'Developer',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Flexible(
                child: FractionallySizedBox(
                  heightFactor: 0.1,
                ),
              ),
              Container(
                padding: const EdgeInsets.all(40),
                child: Container(
                  padding: EdgeInsets.all(20),
                  width: 170,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Color.fromARGB(255, 0, 0, 0)),
                  child: Column(
                    children: [
                      //bagian image
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.asset('lib/images/nanta.jpg'),
                      ),
                      //isi
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 6.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Raden Ananta Mahardika',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              'Mahasiswa Telkom University',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 100, 100, 100)),
                            ),
                            Text(
                              'S1 Informatika',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 100, 100, 100)),
                            ),
                            Text(
                              '08128316900',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 100, 100, 100)),
                            ),
                            Text(
                              'radenananta.ram@gmail.com',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 100, 100, 100)),
                            ),
                            Text(
                              'Instagram @rad.ananta',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 100, 100, 100)),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(40),
                child: Container(
                  padding: EdgeInsets.all(20),
                  width: 170,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Color.fromARGB(255, 0, 0, 0)),
                  child: Column(
                    children: [
                      //bagian image
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.asset('lib/images/daffa.jpg'),
                      ),
                      //isi
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 6.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Daffa Afia Rizfazka',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              'Mahasiswa Telkom University',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 100, 100, 100)),
                            ),
                            Text(
                              'S1 Informatika',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 100, 100, 100)),
                            ),
                            Text(
                              '082219345474',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 100, 100, 100)),
                            ),
                            Text(
                              'daffa.afia.r@gmail.com',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 100, 100, 100)),
                            ),
                            Text(
                              'Instagram @daffa_ariz',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 100, 100, 100)),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                color: Color.fromARGB(255, 213, 212, 212),
                height: 100,
                child: Text(
                  'Converse: Ciptakan Gaya Unikmu',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
