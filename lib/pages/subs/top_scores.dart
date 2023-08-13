import 'package:flutter/material.dart';

class TopScores extends StatefulWidget {
  const TopScores({super.key});

  @override
  State<TopScores> createState() => _TopScoresState();
}

class _TopScoresState extends State<TopScores> {
  List leagues = [
    {
      "name": "Christiano Ronaldo",
      "team": "Portugal",
      "goals": "830",
      "no": "1",
    },
    {
      "name": "Lionel Messi",
      "team": "Argentina",
      "goals": "800",
      "no": "2",
    },
    {
      "name": "Romario",
      "team": "Brazil",
      "goals": "780",
      "no": "3",
    },
    {
      "name": "Pele",
      "team": "Brazil",
      "goals": "767",
      "no": "4",
    },
    {
      "name": "Joseph Bican",
      "team": "Czech Rep.",
      "goals": "759",
      "no": "5",
    },
    {
      "name": "Ferenc Puscas",
      "team": "Hungary",
      "goals": "746",
      "no": "6",
    },
    {
      "name": "Gerd Mular",
      "team": "Germany",
      "goals": "735",
      "no": "7",
    },
    {
      "name": "Eusbio",
      "team": "Portugal",
      "goals": "623",
      "no": "8",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 0,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.zero,
          child: DefaultTabController(
            length: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 20, top: 20),
                  child: Text(
                    "Top Scores",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                Container(
                  // padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: TabBar(
                    labelColor: Colors.black,
                    labelStyle: const TextStyle(fontWeight: FontWeight.w500),
                    unselectedLabelColor:
                        const Color.fromRGBO(137, 137, 146, 1),
                    indicator: BoxDecoration(
                      color: const Color.fromRGBO(241, 241, 241,
                          1), // Set the color of the tab indicator
                      borderRadius: BorderRadius.circular(
                          0.0), // Optional: You can add border radius
                    ),
                    indicatorColor: Colors.transparent,
                    tabs: const [
                      Tab(
                        text: "Leagues",
                      ),
                      Tab(
                        text: "Tournaments",
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: TabBarView(
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      SingleChildScrollView(
                        child: Column(
                          children: [
                            DataTable(
                              columns: const [
                                DataColumn(
                                  label: Text(
                                    "Player Name",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                                DataColumn(
                                    label: Text(
                                  "Team",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey,
                                  ),
                                )),
                                DataColumn(
                                    label: Text(
                                  "Goals",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey,
                                  ),
                                )),
                              ],
                              rows: leagues.map((row) {
                                return DataRow(cells: [
                                  DataCell(
                                    Text(
                                      row['name'],
                                      style: const TextStyle(
                                        decoration: TextDecoration.underline,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                  DataCell(
                                    Text(
                                      row['team'],
                                      style: const TextStyle(
                                        decoration: TextDecoration.underline,
                                      ),
                                    ),
                                  ),
                                  DataCell(
                                    Text(
                                      row['goals'],
                                      style: const TextStyle(
                                        decoration: TextDecoration.underline,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ]);
                              }).toList(),
                            ),
                          ],
                        ),
                      ),

                      // second tab
                      SingleChildScrollView(
                        child: Column(
                          children: [
                            DataTable(
                              columns: const [
                                DataColumn(
                                  label: Text(
                                    "Player Name",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                                DataColumn(
                                    label: Text(
                                  "Team",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey,
                                  ),
                                )),
                                DataColumn(
                                    label: Text(
                                  "Goals",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey,
                                  ),
                                )),
                              ],
                              rows: leagues.map((row) {
                                return DataRow(cells: [
                                  DataCell(
                                    Text(
                                      row['name'],
                                      style: const TextStyle(
                                        decoration: TextDecoration.underline,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                  DataCell(
                                    Text(
                                      row['team'],
                                      style: const TextStyle(
                                        decoration: TextDecoration.underline,
                                      ),
                                    ),
                                  ),
                                  DataCell(
                                    Text(
                                      row['goals'],
                                      style: const TextStyle(
                                        decoration: TextDecoration.underline,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ]);
                              }).toList(),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
