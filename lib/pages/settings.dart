import 'package:flutter/material.dart';

class AppSettings extends StatefulWidget {
  const AppSettings({super.key});

  @override
  State<AppSettings> createState() => _AppSettingsState();
}

class _AppSettingsState extends State<AppSettings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Center(
                child: Column(
                  children: [
                    const CircleAvatar(
                      backgroundColor: Colors.transparent,
                      minRadius: 55,
                      maxRadius: 55,
                      backgroundImage: AssetImage("images/avatar.png"),
                    ),
                    const SizedBox(height: 15),
                    const Text(
                      textAlign: TextAlign.center,
                      "Baller Hawkins",
                      style: TextStyle(
                        fontSize: 21,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 5),
                    const Text(textAlign: TextAlign.center, "@hawwks"),
                    const SizedBox(height: 7),
                    GestureDetector(
                      child: Container(
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 228, 228, 228),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Text(
                          "Edit Profile",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 5),
                    const Divider(),
                    const SizedBox(height: 5),
                    ListTile(
                      contentPadding: const EdgeInsets.only(
                          left: 0, right: 0, top: 4, bottom: 4),
                      onTap: () {},
                      leading: const Icon(Icons.bookmark_border_rounded,
                          color: Colors.black),
                      title: const Text(
                        "Bookmarks",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      trailing: const Icon(Icons.arrow_forward_ios_rounded,
                          size: 19, color: Colors.black),
                    ),
                    const SizedBox(height: 5),
                    ListTile(
                      contentPadding: const EdgeInsets.only(
                          left: 0, right: 0, top: 4, bottom: 4),
                      onTap: () {},
                      leading: const Icon(Icons.message_outlined,
                          color: Colors.black),
                      title: const Text(
                        "Submit Feedback",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      trailing: const Icon(Icons.arrow_forward_ios_rounded,
                          size: 19, color: Colors.black),
                    ),
                    const SizedBox(height: 5),
                    ListTile(
                      contentPadding: const EdgeInsets.only(
                          left: 0, right: 0, top: 4, bottom: 4),
                      onTap: () {},
                      leading:
                          const Icon(Icons.call_outlined, color: Colors.black),
                      title: const Text(
                        "Contact Us",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      trailing: const Icon(Icons.arrow_forward_ios_rounded,
                          size: 19, color: Colors.black),
                    ),
                    const Divider(),
                    ListTile(
                      contentPadding: const EdgeInsets.only(
                          left: 0, right: 0, top: 4, bottom: 4),
                      onTap: () {},
                      leading:
                          const Icon(Icons.logout_outlined, color: Colors.red),
                      title: const Text(
                        "Logout",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: Colors.red,
                        ),
                      ),
                      trailing: const Icon(Icons.arrow_forward_ios_rounded,
                          size: 19, color: Colors.black),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
