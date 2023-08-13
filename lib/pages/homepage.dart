import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:soccer_xplorer/pages/subs/filter_page.dart';
import 'package:soccer_xplorer/pages/subs/notifications.dart';
import 'package:soccer_xplorer/utils/circle_details.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List live = [
    {
      "day": "Today",
      "place1": "England",
      "place1image": "images/england.png",
      "place2": "Belgium",
      "place2image": "images/belgium.png",
      "time": "12:00",
    },
    {
      "day": "Today",
      "place1": "Argentina",
      "place1image": "images/argentina.png",
      "place2": "Brazil",
      "place2image": "images/brazil.png",
      "time": "21:00",
    },
    {
      "day": "Now",
      "place1": "Germany",
      "place1image": "images/germany.png",
      "place2": "Ireland",
      "place2image": "images/ireland.png",
      "time": "12:00",
    },
    {
      "day": "Now",
      "place1": "England",
      "place1image": "images/england.png",
      "place2": "Spain",
      "place2image": "images/spain.png",
      "time": "13:30",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "SoccerXplorer",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 0.5,
                    ),
                  ),
                  const SizedBox(height: 5),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        PageTransition(
                          child: const MyNotifications(),
                          type: PageTransitionType.rightToLeft,
                          duration: Duration.zero,
                          childCurrent: widget,
                        ),
                      );
                    },
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        border: Border.all(width: 0.6, color: Colors.grey),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: const Icon(Icons.notifications_none_outlined),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              const Text(
                "Quick Actions",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleDetails(
                    body: Image.asset("images/search.png", height: 50),
                    color: const Color.fromRGBO(30, 221, 118, 1),
                    sub: "Search",
                    onTap: () {
                      Navigator.of(context).push(
                        PageTransition(
                          child: const SearchFilter(),
                          type: PageTransitionType.rightToLeft,
                          duration: Duration.zero,
                          childCurrent: widget,
                        ),
                      );
                    },
                  ),
                  CircleDetails(
                    body: Image.asset("images/alarm.png", height: 40),
                    color: const Color.fromRGBO(30, 221, 118, 1),
                    sub: "Top Scores",
                  ),
                  CircleDetails(
                    body: Image.asset("images/route.png", height: 30),
                    color: const Color.fromRGBO(30, 221, 118, 1),
                    sub: "Sitemap",
                  ),
                  CircleDetails(
                    body: Image.asset("images/trophy.png", height: 30),
                    color: const Color.fromRGBO(30, 221, 118, 1),
                    sub: "Live",
                  ),
                ],
              ),
              const SizedBox(height: 40),
              const Text(
                "Happening Now",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 10),
              Expanded(
                  child: ListView.builder(
                itemCount: live.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // first item
                          Row(
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.transparent,
                                backgroundImage:
                                    AssetImage(live[index]['place1image']),
                              ),
                              const SizedBox(width: 8),
                              Text(live[index]['place1'])
                            ],
                          ),
                          // second item
                          Column(
                            children: [
                              Text(
                                live[index]['day'],
                                style: const TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 15,
                                ),
                              ),
                              const SizedBox(height: 5),
                              Text(live[index]['time'],
                                  style: const TextStyle(
                                    fontSize: 12,
                                  ))
                            ],
                          ),
                          // third item
                          Row(
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.transparent,
                                backgroundImage:
                                    AssetImage(live[index]['place2image']),
                              ),
                              const SizedBox(width: 8),
                              Text(live[index]['place2'])
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      const Divider(),
                      const SizedBox(height: 10),
                    ],
                  );
                },
              ))
            ],
          ),
        ),
      ),
    );
  }
}
