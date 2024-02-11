import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AboutPage extends StatefulWidget {
  final Function()? onTap;
  const AboutPage({super.key, required this.onTap});

  @override
  State<AboutPage> createState() => _AboutPageState();
}

void signUserOut() {
  FirebaseAuth.instance.signOut();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Builder(
            builder: (context) => IconButton(
              icon: const Padding(
                padding: EdgeInsets.only(left: 12.0),
                child: Icon(
                  Icons.menu,
                  color: Colors.black,
                ),
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            ),
          )),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Text(
                "Tentang Converse",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 19,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  children: [
                    const SizedBox(height: 30),
                    Image.asset(
                      "lib/images/Converse.png",
                      height: 100,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30.0),
                      child: Text(
                        "Converse Inc., yang berkantor pusat di Boston, Massachusetts, adalah anak perusahaan yang dimiliki sepenuhnya oleh NIKE, Inc. Didirikan pada tahun 1908 sebagai perusahaan sepatu karet yang mengkhususkan diri pada sepatu karet. Tak lama kemudian, bahan baku karet yang sama digunakan dalam pembuatan mamufakturing sepatu tenis. Di tahun 1920, perusahaan memproduksi sepatu basket pertama yang terbuat dari kanvas, dinamakan \"All Star\", untuk bola yang terkubur di lapangan. Saat ini, Converse dijual secara global di lebih dari 160 negara, dan telah menaklukkan warisan yang kaya dari alas kaki legendaris seperti Chuck Taylor All Star, Jack Purcell, Cons dan Chuck Taylor All Star II yang telah hadir di beberapa momen dalam sejarah, membuat musik, seni urban, dan skateboard di jalanan dunia, selain dianggap sebagai ikon mode dan sahabat hari kerja. Setiap lini yang dikembangkan oleh Converse memiliki identitas, gaya dan kustomisasi yang membuatnya menjadi merek yang tidak membatasi penggemarnya.",
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                    ),
                    const SizedBox(height: 30),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                "Tentang Creator App",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 19,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const SizedBox(
                      width: 30,
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 2),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: SizedBox(
                          width: 275,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                "lib/images/Nanta.png",
                                height: 90,
                              ),
                              const SizedBox(height: 20),
                              Text(
                                "Raden Ananta Mahardika",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                                textAlign: TextAlign.start,
                              ),
                              const SizedBox(
                                height: 2,
                              ),
                              Text(
                                "Bandung, 27 Januari 2003",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                "\"At first only me and god knows how my code works. But now only god knows why my code works.\"",
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              Text(
                                "Skills:",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(height: 15),
                              Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Image.asset(
                                        "lib/images/Python.png",
                                        height: 30,
                                      ),
                                      Image.asset(
                                        "lib/images/Java.png",
                                        height: 40,
                                      ),
                                      Image.asset(
                                        "lib/images/Go.png",
                                        height: 20,
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 20),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Image.asset(
                                        "lib/images/Flutter.png",
                                        height: 30,
                                      ),
                                      Image.asset(
                                        "lib/images/Dart.png",
                                        height: 30,
                                      ),
                                      Image.asset(
                                        "lib/images/C++.png",
                                        height: 30,
                                      ),
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 2),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: SizedBox(
                          width: 275,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                "lib/images/Daffa.png",
                                height: 90,
                              ),
                              const SizedBox(height: 20),
                              Text(
                                "Daffa Afia Rizfazka",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                                textAlign: TextAlign.start,
                              ),
                              const SizedBox(
                                height: 2,
                              ),
                              Text(
                                "Bandung, 17 September 2003",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                "\"i love to do some code, but when your emulator use 99 percent of RAM and VS Code had a lot of red lines, Text(\"Daffa Left The Chat\").\"",
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              Text(
                                "Skills:",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(height: 15),
                              Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Image.asset(
                                        "lib/images/Python.png",
                                        height: 30,
                                      ),
                                      Image.asset(
                                        "lib/images/Java.png",
                                        height: 40,
                                      ),
                                      Image.asset(
                                        "lib/images/Go.png",
                                        height: 20,
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 20),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Image.asset(
                                        "lib/images/Flutter.png",
                                        height: 30,
                                      ),
                                      Image.asset(
                                        "lib/images/Dart.png",
                                        height: 30,
                                      ),
                                      Image.asset(
                                        "lib/images/C++.png",
                                        height: 30,
                                      ),
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 30,
                    )
                  ],
                ),
              ),
              const SizedBox(height: 25),
              Image.asset(
                "lib/images/Converse.png",
                height: 80,
                color: Colors.grey,
              ),
              const SizedBox(
                height: 12,
              ),
              Text(
                "~ Converse, Ciptakan Gaya Unik Mu ~",
                style: TextStyle(color: Colors.grey),
              ),
              const SizedBox(height: 25),
            ],
          ),
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey[900],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                //logo
                DrawerHeader(
                  child: Image.asset(
                    'lib/images/Converse.png',
                    color: Colors.white,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Divider(
                    color: Colors.grey[800],
                  ),
                ),
                //other page
                GestureDetector(
                  onTap: widget.onTap,
                  child: const Padding(
                    padding: EdgeInsets.only(left: 25.0),
                    child: ListTile(
                      leading: Icon(
                        Icons.home,
                        color: Colors.white,
                      ),
                      title: Text(
                        'Home',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  child: const Padding(
                    padding: EdgeInsets.only(left: 25.0),
                    child: ListTile(
                      leading: Icon(
                        Icons.info,
                        color: Colors.white,
                      ),
                      title: Text(
                        'About',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                )
              ],
            ),
            GestureDetector(
              onTap: signUserOut,
              child: const Padding(
                padding: EdgeInsets.only(left: 25.0, bottom: 25),
                child: ListTile(
                  leading: Icon(
                    Icons.logout,
                    color: Colors.white,
                  ),
                  title: Text(
                    'Logout',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
