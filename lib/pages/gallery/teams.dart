import 'package:flutter/material.dart';

class TeamsGallery extends StatelessWidget {
  const TeamsGallery({super.key});

  @override
  Widget build(BuildContext context) {
    List teams = [
      {
        "team": "ChelseaFC",
        "image": "images/teams/chelsea.png",
      },
      {
        "team": "Bayern",
        "image": "images/teams/Bayern.png",
      },
      {
        "team": "FCBarcelona",
        "image": "images/teams/barcelona.png",
      },
      {
        "team": "Juventus",
        "image": "images/teams/juventus.png",
      },
      {
        "team": "Liverpool",
        "image": "images/teams/liverpool.png",
      },
      {
        "team": "Manchester U..",
        "image": "images/teams/manchester_united.png",
      },
      {
        "team": "Real Madrid",
        "image": "images/teams/real_madrid.png",
      },
      {
        "team": "Paris Saint..",
        "image": "images/teams/barcelona.png",
      },
      {
        "team": "Manchester C..",
        "image": "images/teams/manchester_city.png",
      },
    ];
    return Container(
      padding: EdgeInsets.zero,
      child: Column(
        children: [
          const SizedBox(height: 10),
          Expanded(
              child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, // Number of images per row
              mainAxisSpacing: 8.0, // Spacing between rows
              crossAxisSpacing: 8.0, // Spacing between columns
            ),
            itemCount: teams.length,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.transparent,
                    minRadius: 40,
                    maxRadius: 40,
                    backgroundImage: AssetImage(teams[index]['image']),
                  ),
                  const SizedBox(height: 7),
                  Text(
                    teams[index]['team'],
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              );
            },
          ))
        ],
      ),
    );
  }
}
