import 'package:flutter/material.dart';
import 'support_page.dart';
import 'settings_page.dart';
import 'specialty_cases_page.dart'; // إضافة استيراد الصفحة الجديدة

class HomePage extends StatefulWidget {
  final String name;
  final String level;
  final String id;

  HomePage({required this.name, required this.level, required this.id});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Med VR',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    const Color.fromARGB(255, 0, 45, 150),
                    Colors.lightBlue,
                  ],
                ),
              ),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 40,
                    child: Text(
                      widget.name[0].toUpperCase(),
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    widget.name,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.school),
              title: Text('Level: ${widget.level}',
                  style: TextStyle(color: Colors.black)),
            ),
            ListTile(
              leading: Icon(Icons.badge),
              title: Text('ID: ${widget.id}',
                  style: TextStyle(color: Colors.black)),
            ),
            ListTile(
              leading: Icon(Icons.support),
              title: Text('Support'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SupportPage()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SettingsPage()),
                );
              },
            ),
          ],
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.blueAccent,
              const Color.fromARGB(255, 101, 42, 190),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Choose your specialty',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          SpecialtyCasesPage(specialty: 'Internal Diseases'),
                    ),
                  );
                },
                child:
                    Text('Internal diseases', style: TextStyle(fontSize: 20)),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          SpecialtyCasesPage(specialty: 'Cardiology'),
                    ),
                  );
                },
                child: Text('Cardiology', style: TextStyle(fontSize: 20)),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          SpecialtyCasesPage(specialty: 'Neurology'),
                    ),
                  );
                },
                child: Text('Neurology', style: TextStyle(fontSize: 20)),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          SpecialtyCasesPage(specialty: 'Pediatrics'),
                    ),
                  );
                },
                child: Text('Pediatrics', style: TextStyle(fontSize: 20)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
