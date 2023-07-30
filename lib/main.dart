import 'package:critterpedia_plus/di/di_setup.dart';
import 'package:critterpedia_plus/presentation/screens/home/home_bloc.dart';
import 'package:critterpedia_plus/presentation/screens/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  runApp(const CritterpediaPlus());
}

class CritterpediaPlus extends StatelessWidget {
  const CritterpediaPlus({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(tabBarTheme: const TabBarTheme(labelColor: Colors.black)),
      home: BlocProvider(
        create: (context) {
          return HomeBloc(getIt(), getIt(), getIt())..init();
        },
        child: const HomeScreen(),
      ),
    );
  }
}
