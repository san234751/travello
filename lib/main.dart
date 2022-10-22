import 'package:flutter/material.dart';
import 'package:travello/pages/maps_page.dart';
import 'package:travello/pages/search_page.dart';
import 'package:travello/pages/services_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Travello',
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;
  void func() {
    setState(() {
      ++index;
    });
  }

  List<Widget> pages = [
    SearchTrain(),
    MapsPage(),
    ServicePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[index],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: index == 0 ? Colors.blue : Colors.grey,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.explore,
              color: index == 1 ? Colors.blue : Colors.grey,
            ),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.notifications,
              color: index == 2 ? Colors.blue : Colors.grey,
            ),
            label: 'Notification',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: index == 3 ? Colors.blue : Colors.grey,
            ),
            label: 'Profile',
          )
        ],
        onTap: (value) => setState(() {
          index = value;
        }),
      ),
    );
  }
}
