import 'package:critterpedia_plus/di/di_setup.dart';
import 'package:critterpedia_plus/presentation/screens/home/home_screen.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:
          ThemeData(tabBarTheme: const TabBarTheme(labelColor: Colors.black)),
      home: const Scaffold(body: HomeScreen()),
    );
  }
}
