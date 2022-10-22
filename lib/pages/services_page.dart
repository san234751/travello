import 'package:flutter/material.dart';

class ServicePage extends StatefulWidget {
  ServicePage({super.key});

  @override
  State<ServicePage> createState() => _ServicePageState();
}

class _ServicePageState extends State<ServicePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(18),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  children: [
                    Container(
                      height: 200,
                      width: MediaQuery.of(context).size.width / 1.2,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('Assets/Hotel.png'),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 50,
                      bottom: 10,
                      child: Text(
                        'Hotel',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    )
                  ],
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: Stack(
                    children: [
                      Container(
                        height: 250,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('Assets/food.png'),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 50,
                        bottom: 30,
                        child: Text(
                          'Food',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: Stack(
                    children: [
                      Container(
                        height: 250,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('Assets/Camera.png'),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 30,
                        bottom: 30,
                        child: Text(
                          'Travel Guide',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
