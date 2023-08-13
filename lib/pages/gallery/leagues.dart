import 'package:flutter/material.dart';

class LeaguesGallery extends StatelessWidget {
  const LeaguesGallery({super.key});

  @override
  Widget build(BuildContext context) {
    List leagues = [
      {
        "league": "Serie A",
        "image": "images/leagues/serie_a.png",
      },
      {
        "league": "PremierL...",
        "image": "images/leagues/premiere_league.png",
      },
      {
        "league": "Champio...",
        "image": "images/leagues/champions_league.png",
      },
      {
        "league": "Laliga",
        "image": "images/leagues/laliga.png",
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
            itemCount: leagues.length,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.transparent,
                    minRadius: 40,
                    maxRadius: 40,
                    backgroundImage: AssetImage(leagues[index]['image']),
                  ),
                  const SizedBox(height: 7),
                  Text(
                    leagues[index]['league'],
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
