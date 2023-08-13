import 'package:flutter/material.dart';
import 'package:soccer_xplorer/pages/gallery/gallery.dart';
import 'package:soccer_xplorer/pages/homepage.dart';
import 'package:soccer_xplorer/pages/settings.dart';

class PageTracker extends StatefulWidget {
  const PageTracker({super.key});

  @override
  State<PageTracker> createState() => _PageTrackerState();
}

class _PageTrackerState extends State<PageTracker> {
  int selectedIndex = 0;

  void navigate(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  final List<Widget> pages = const [
    HomePage(),
    GalleryHolder(),
    HomePage(),
    AppSettings(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selectedIndex],
      bottomNavigationBar: Container(
        color: Colors.white,
        padding: const EdgeInsets.only(top: 20, bottom: 20),
        child: BottomNavigationBar(
          backgroundColor: Colors.white,
          currentIndex: selectedIndex,
          type: BottomNavigationBarType.fixed,
          onTap: navigate,
          selectedItemColor: Colors.black,
          unselectedIconTheme:
              const IconThemeData(color: Color.fromRGBO(140, 140, 157, 1)),
          iconSize: 30,
          selectedFontSize: 10,
          unselectedFontSize: 10,
          enableFeedback: false,
          elevation: 0,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_filled),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.calendar_view_month_rounded),
              label: "Gallery",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.play_circle_outline_rounded),
              label: "Games",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: "Settings",
            )
          ],
        ),
      ),
    );
  }
}
