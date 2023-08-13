import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:soccer_xplorer/onboarding/onboarding.dart';

Future<void> main() async {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness: Brightness.dark,
      systemNavigationBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: Colors.white,
      systemNavigationBarContrastEnforced: false,
    ),
  );

  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
      overlays: [SystemUiOverlay.top]);

  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

MaterialColor primaryBlack = const MaterialColor(
  0xFF000000, // Primary color value (black)
  <int, Color>{
    50: Colors.black12,
    100: Colors.black26,
    200: Colors.black38,
    300: Colors.black45,
    400: Colors.black54,
    500: Colors.black, // Main primary color (black)
    600: Colors.black87,
    700: Colors.black,
    800: Colors.black,
    900: Colors.black,
  },
);

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Onboarding(),
      theme: ThemeData(
        primarySwatch: primaryBlack,
        fontFamily: "PlusJakarta",
      ),
    );
  }
}
