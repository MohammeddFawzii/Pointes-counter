import 'package:flutter/material.dart';

void main() {
  runApp(const PointsCounter());
}

class PointsCounter extends StatefulWidget {
  const PointsCounter({super.key});

  @override
  State<PointsCounter> createState() => _PointsCounterState();
}

class _PointsCounterState extends State<PointsCounter> {
  int teamACounter = 0;
  int teamBCounter = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.brown,
          title: const Text(
            "Points Counter ",
            style: TextStyle(fontSize: 30),
          ),
        ),
        body: Column(children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                //team A
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                  const Text(
                    "Team A",
                    style: TextStyle(fontSize: 50),
                  ),
                  Text(
                    teamACounter.toString(),
                    style: const TextStyle(fontSize: 180),
                  ),
                  //add 1 point
                  ElevatedButton(
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.brown),
                    onPressed: () {
                      setState(() {
                        teamACounter++;
                      });
                    },
                    child: const Text(
                      "Add 1 point",
                      style: TextStyle(
                        fontSize: 24,
                      ),
                    ),
                  ),
                  //add two points
                  ElevatedButton(
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.brown),
                    onPressed: () {
                      setState(() {
                        teamACounter = teamACounter + 2;
                      });
                    },
                    child: const Text(
                      "Add 2 point",
                      style: TextStyle(
                        fontSize: 24,
                      ),
                    ),
                  ),
                  //add 3 points
                  ElevatedButton(
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.brown),
                    onPressed: () {
                      setState(() {
                        teamACounter = teamACounter + 3;
                      });
                    },
                    child: const Text(
                      "Add 3 point",
                      style: TextStyle(
                        fontSize: 24,
                      ),
                    ),
                  ),
                ]),
                const VerticalDivider(
                  thickness: 2,
                  indent: 70,
                  endIndent: 70,
                ),
                // team B
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                  const Text(
                    "Team B",
                    style: TextStyle(fontSize: 50),
                  ),
                  Text(
                    teamBCounter.toString(),
                    style: const TextStyle(fontSize: 180),
                  ),
                  // add 1 point
                  ElevatedButton(
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.brown),
                    onPressed: () {
                      setState(() {
                        teamBCounter++;
                      });
                    },
                    child: const Text(
                      "Add 1 point",
                      style: TextStyle(
                        fontSize: 24,
                      ),
                    ),
                  ),
                  ElevatedButton(
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.brown),
                    onPressed: () {
                      setState(() {
                        teamBCounter = teamBCounter + 2;
                      });
                    },
                    child: const Text(
                      "Add 2 point",
                      style: TextStyle(
                        fontSize: 24,
                      ),
                    ),
                  ),
                  ElevatedButton(
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.brown),
                    onPressed: () {
                      setState(() {
                        teamBCounter = teamBCounter + 3;
                      });
                    },
                    child: const Text(
                      "Add 3 point",
                      style: TextStyle(
                        fontSize: 24,
                      ),
                    ),
                  ),
                ]),
              ],
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.brown),
            onPressed: () {
              setState(() {
                teamACounter = 0;
                teamBCounter = 0;
              });
            },
            child: const Text(
              "Reset",
              style: TextStyle(
                fontSize: 24,
              ),
            ),
          ),
          const SizedBox(
            height: 200,
          )
        ]),
      ),
    );
  }
}
