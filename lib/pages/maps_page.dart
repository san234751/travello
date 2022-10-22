import 'package:flutter/material.dart';
import 'package:travello/pages/services_page.dart';

class MapsPage extends StatefulWidget {
  MapsPage({super.key});

  @override
  State<MapsPage> createState() => _MapsPageState();
}

class _MapsPageState extends State<MapsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 50,
              child: Card(
                elevation: 5,
                child: Row(
                  children: [
                    SizedBox(width: 8),
                    Icon(Icons.train),
                    SizedBox(width: 8),
                    Text('Tezpur'),
                  ],
                ),
              ),
            ),
            Container(
              height: 50,
              child: Card(
                elevation: 5,
                child: Row(
                  children: [
                    SizedBox(width: 8),
                    Icon(Icons.train),
                    SizedBox(width: 8),
                    Text('Guwahati'),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Icon(Icons.calendar_today),
                Text('26 June Monday'),
                Icon(Icons.person),
                Text('1'),
                Icon(Icons.train),
                Text('GHY-TEZ Express'),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 350,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(
                  image: AssetImage('Assets/map.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 30),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.blue,
              ),
              child: TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ServicePage()));
                },
                child: const Text(
                  'Find Trains',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
