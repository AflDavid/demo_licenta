import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_experiment/pages/program_1.dart';
import 'package:flutter_experiment/pages/program_2.dart';
import 'package:flutter_experiment/pages/contacte_uni.dart';
import 'package:flutter_experiment/pages/reguli_uni.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('QUO VADIS JUVENIS'),
        backgroundColor: Colors.green,
      ),
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            Expanded(
  child: ListView(
    padding: EdgeInsets.zero,
  children: <Widget>[
   DrawerHeader(
  decoration: const BoxDecoration(
    color: Colors.green,
  ),
  child: Column(
    children: [
      Image.asset(
        'images/logo.png',
        width: 80,
        height: 80, 
        fit: BoxFit.contain, 
      ),
      const SizedBox(height: 8),
      const Align(
        alignment: Alignment.bottomCenter,
        child: Text(
          'Menu',
          style: TextStyle(
            color: Colors.black,
            fontSize: 24,
          ),
        ),
      ),
    ],
  ),
),
    ListTile(
      leading: const Icon(Icons.file_copy),
      title: const Text('Reguli Campus'),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const ReguliPage()), 
        );
      },
    ),
    ListTile(
      leading: const Icon(Icons.file_copy),
      title: const Text('Tur Virtual'),
      onTap: () async {
        const url = 'https://www.emanuel.ro/TV';
        if (await canLaunch(url)) {
          await launch(url); 
        } else {
          throw 'Could not launch $url';
        }
      },
    ),
    ListTile(
      leading: const Icon(Icons.file_copy),
      title: const Text('Contacte'),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const ContactsPage()),
        );
      },
    ),
  ],
  ),
),

            IconButton(
              icon: const Icon(Icons.settings),
              onPressed: () {
                // trimitere catre support
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.green,
        currentIndex: currentPageIndex,
        onTap: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            activeIcon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.file_copy),
            label: 'Program',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Profesori',
          ),
        ],
      ),
      body: IndexedStack(
        index: currentPageIndex,
        children: <Widget>[
          // Home page
          Card(
            shadowColor: Colors.transparent,
            margin: const EdgeInsets.all(8.0),
            child: SizedBox.expand(
              child: Center(
                child: Text(
                  'Poster 2024', // afisul viitorului eveniment
                  style: theme.textTheme.titleLarge,
                ),
              ),
            ),
          ),

          // Program page
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Program1Page()),
                      );
                    },
                    child: const Card(
                      elevation: 5,
                      child: SizedBox(
                        width: 300, 
                        child: ListTile(
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 20,
                              horizontal: 16), 
                          leading: Icon(Icons.article),
                          title: Text('program 1'),
                          subtitle: Text('Descriere program'),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Program2Page()),
                      );
                    },
                    child: const Card(
                      elevation: 5,
                      child: SizedBox(
                        width: 300,
                        child: ListTile(
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 20,
                              horizontal:
                                  16),
                          leading: Icon(Icons.article),
                          title: Text('program 2'),
                          subtitle: Text('Descriere program'),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Profesori page
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                const SizedBox(height: 20), 
                const Text(
                  'Profesori Universitatii',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20),
                GestureDetector(
                  onTap: () {
                    // need DB
                  },
                  child: const Card(
                    child: ListTile(
                      leading: Icon(Icons.circle),
                      title: Text('Teologie pastorala'),
                      subtitle: Text('Descriere program'),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    // need DB
                  },
                  child: const Card(
                    child: ListTile(
                      leading: Icon(Icons.circle),
                      title: Text('Asistenta Sociala'),
                      subtitle: Text('Descriere program'),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    // need DB
                  },
                  child: const Card(
                    child: ListTile(
                      leading: Icon(Icons.circle),
                      title: Text('Muzica'),
                      subtitle: Text('Descriere program'),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    // need DB
                  },
                  child: const Card(
                    child: ListTile(
                      leading: Icon(Icons.circle),
                      title: Text('Litere'),
                      subtitle: Text('Descriere program'),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    // need DB
                  },
                  child: const Card(
                    child: ListTile(
                      leading: Icon(Icons.circle),
                      title: Text('Management'),
                      subtitle: Text('Descriere program'),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
