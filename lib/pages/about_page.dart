import 'package:converse_project/pages/home_page.dart';
import 'package:flutter/material.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  State<AboutPage> createState() => _AboutPageState();
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
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomePage(),
                      )),
                  child: Container(
                    child: const Padding(
                      padding: const EdgeInsets.only(left: 25.0),
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
                ),
                GestureDetector(
                  onTap: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => AboutPage())),
                  child: Container(
                    child: const Padding(
                      padding: const EdgeInsets.only(left: 25.0),
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
                  ),
                )
              ],
            ),
            const Padding(
              padding: const EdgeInsets.only(left: 25.0, bottom: 25),
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
          ],
        ),
      ),
    );
  }
}
