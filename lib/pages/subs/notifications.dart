import 'package:flutter/material.dart';

class MyNotifications extends StatefulWidget {
  const MyNotifications({super.key});

  @override
  State<MyNotifications> createState() => _MyNotificationsState();
}

class _MyNotificationsState extends State<MyNotifications> {
  List notification = [
    {
      "title": "Christiano ronaldo post",
      "info": "I am very happy about my...",
      "time": "12:15",
    },
    {
      "title": "Inter milan vs Ac milan",
      "info": "Messi scores the final PK. goal ...",
      "time": "10:30"
    },
    {
      "title": "Inter milan vs Ac milan",
      "info": "Messi scores the final PK. goal ...",
      "time": "10:30"
    },
    {
      "title": "Inter milan vs Ac milan",
      "info": "Messi scores the final PK. goal ...",
      "time": "10:30"
    },
    {
      "title": "Inter milan vs Ac milan",
      "info": "Messi scores the final PK. goal ...",
      "time": "10:30"
    },
    {
      "title": "Inter milan vs Ac milan",
      "info": "Messi scores the final PK. goal ...",
      "time": "10:30"
    },
    {
      "title": "Inter milan vs Ac milan",
      "info": "Messi scores the final PK. goal ...",
      "time": "10:30"
    },
    {
      "title": "Inter milan vs Ac milan",
      "info": "Messi scores the final PK. goal ...",
      "time": "10:30"
    },
    {
      "title": "Inter milan vs Ac milan",
      "info": "Messi scores the final PK. goal ...",
      "time": "10:30"
    },
    {
      "title": "Inter milan vs Ac milan",
      "info": "Messi scores the final PK. goal ...",
      "time": "10:30"
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
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Notifications",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      border: Border.all(width: 0.6, color: Colors.grey),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: const Icon(Icons.notifications_none_outlined),
                  )
                ],
              ),
              const SizedBox(height: 15),
              const Text("Get latest notification on footbal updates"),
              const SizedBox(height: 20),
              Expanded(
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: notification.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      contentPadding: EdgeInsets.zero,
                      leading: const CircleAvatar(
                        backgroundColor: Color.fromARGB(255, 145, 244, 196),
                        minRadius: 25,
                        maxRadius: 25,
                      ),
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            notification[index]['title'],
                            style: const TextStyle(
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Text(
                            notification[index]['time'],
                            style: const TextStyle(
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                      subtitle: Text(notification[index]['info']),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
