import 'package:flutter/material.dart';
import 'package:travello/pages/maps_page.dart';

class SearchTrain extends StatefulWidget {
  SearchTrain({super.key});

  @override
  State<SearchTrain> createState() => _SearchTrainState();
}

class _SearchTrainState extends State<SearchTrain> {
  DateTime goingDate = DateTime.now();
  DateTime returningDate = DateTime.now();

  Future<void> _selectDategoing(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: goingDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != goingDate) {
      setState(() {
        goingDate = picked;
      });
    }
  }

  Future<void> _selectDatereturning(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: goingDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != goingDate) {
      setState(() {
        returningDate = picked;
      });
    }
  }

  Map<int, String> Year = {
    1: "Jan",
    2: "Feb",
    3: "Mar",
    4: "Apr",
    5: "May",
    6: "Jun",
    7: "Jul",
    8: "Aug",
    9: "Sep",
    10: "Oct",
    11: "Nov",
    12: "Dec"
  };

  Map<int, String> weekdayName = {
    1: "Monday",
    2: "Tuesday",
    3: "Wednesday",
    4: "Thursday",
    5: "Friday",
    6: "Saturday",
    7: "Sunday"
  };
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              prefixIcon: Icon(
                Icons.train,
                color: Colors.blue,
              ),
            ),
          ),
          SizedBox(height: 10),
          const TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              prefixIcon: Icon(
                Icons.train,
                color: Colors.blue,
              ),
            ),
          ),
          SizedBox(height: 10),
          GestureDetector(
            child: SizedBox(
              height: 50,
              child: Card(
                elevation: 5,
                child: Row(
                  children: [
                    SizedBox(width: 10),
                    Icon(Icons.calendar_today),
                    SizedBox(width: 10),
                    Text(
                      "${goingDate.day} ${Year[goingDate.month]}, ${weekdayName[goingDate.weekday]}",
                    ),
                  ],
                ),
              ),
            ),
            onTap: () => _selectDategoing(context),
          ),
          GestureDetector(
            child: Container(
              height: 50,
              child: Card(
                elevation: 5,
                child: Row(
                  children: [
                    SizedBox(width: 10),
                    Icon(Icons.calendar_today),
                    SizedBox(width: 10),
                    Text(
                      "${returningDate.day} ${Year[returningDate.month]}, ${weekdayName[returningDate.weekday]}",
                    ),
                  ],
                ),
              ),
            ),
            onTap: () => _selectDatereturning(context),
          ),
          SizedBox(height: 20),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.blue,
            ),
            child: TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MapsPage()));
              },
              child: const Text(
                'Find Trains',
                style: TextStyle(color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }
}
