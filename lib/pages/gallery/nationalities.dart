import 'package:flutter/material.dart';

class Nations extends StatefulWidget {
  const Nations({super.key});

  @override
  State<Nations> createState() => _NationsState();
}

class _NationsState extends State<Nations> {
  @override
  Widget build(BuildContext context) {
    List nation = [
      {
        "name": "Argentina",
        "image": "images/argentina.png",
      },
      {
        "name": "Belgium",
        "image": "images/belgium.png",
      },
      {
        "name": "Brazil",
        "image": "images/brazil.png",
      },
      {
        "name": "England",
        "image": "images/england.png",
      },
      {
        "name": "Germany",
        "image": "images/germany.png",
      },
      {
        "name": "Spain",
        "image": "images/spain.png",
      },
      {
        "name": "Republic of Ireland",
        "image": "images/ireland.png",
      },
    ];
    return Container(
      padding: EdgeInsets.zero,
      child: Column(
        children: [
          const SizedBox(height: 10),
          Expanded(
              child: ListView.builder(
            itemCount: nation.length,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  ListTile(
                    contentPadding: const EdgeInsets.only(top: 15, bottom: 15),
                    leading: CircleAvatar(
                      backgroundColor: Colors.transparent,
                      minRadius: 20,
                      maxRadius: 20,
                      backgroundImage: AssetImage(nation[index]['image']),
                    ),
                    title: Text(nation[index]['name']),
                  ),
                  const Divider(),
                ],
              );
            },
          ))
        ],
      ),
    );
  }
}
