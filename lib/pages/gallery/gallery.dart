import 'package:flutter/material.dart';
import 'package:soccer_xplorer/pages/gallery/leagues.dart';
import 'package:soccer_xplorer/pages/gallery/nationalities.dart';
import 'package:soccer_xplorer/pages/gallery/teams.dart';

class GalleryHolder extends StatefulWidget {
  const GalleryHolder({super.key});

  @override
  State<GalleryHolder> createState() => _GalleryHolderState();
}

class _GalleryHolderState extends State<GalleryHolder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: DefaultTabController(
            length: 3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                const Text(
                  "Gallery",
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                    "View memorable images from your favourite moments and players"),
                const SizedBox(height: 20),
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
                        text: "Teams",
                      ),
                      Tab(
                        text: "Leagues",
                      ),
                      Tab(
                        text: "Nationalities",
                      ),
                    ],
                  ),
                ),
                const Expanded(
                  child: TabBarView(
                    physics: NeverScrollableScrollPhysics(),
                    children: [
                      TeamsGallery(),
                      LeaguesGallery(),
                      Nations(),
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
