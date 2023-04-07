import 'package:critterpedia_plus/di/di_setup.dart';
import 'package:critterpedia_plus/presentation/screens/home/tabs/bugs/bugs_bloc.dart';
import 'package:critterpedia_plus/presentation/screens/home/tabs/bugs/bugs_tab.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Critterpedia Plus'),
        ),
        body: Column(
          children: [
            const TabBar(
              tabs: [
                Tab(
                  text: 'Bugs',
                ),
                Tab(
                  text: 'Fish',
                ),
                Tab(
                  text: 'Sea Creatures',
                ),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  BlocProvider<BugsBloc>(
                    create: (context) => BugsBloc(getIt()),
                    child: const BugsTab(),
                  ),
                  const Center(
                    child: Text('2nd tab'),
                  ),
                  const Center(
                    child: Text('3rd tab'),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
