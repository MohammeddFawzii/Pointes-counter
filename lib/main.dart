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
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                  const Text(
                    "Team A",
                    style: TextStyle(fontSize: 55),
                  ),
                  const Text(
                    "0",
                    style: TextStyle(fontSize: 200),
                  ),
                  ElevatedButton(
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.brown),
                    onPressed: () {},
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
                    onPressed: () {},
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
                    onPressed: () {},
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
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                  const Text(
                    "Team B",
                    style: TextStyle(fontSize: 55),
                  ),
                  const Text(
                    "0",
                    style: TextStyle(fontSize: 200),
                  ),
                  ElevatedButton(
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.brown),
                    onPressed: () {},
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
                    onPressed: () {},
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
                    onPressed: () {},
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
            onPressed: () {},
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
