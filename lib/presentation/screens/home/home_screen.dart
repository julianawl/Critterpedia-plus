import 'package:critterpedia_plus/presentation/screens/home/home_bloc.dart';
import 'package:critterpedia_plus/presentation/screens/home/home_state.dart';
import 'package:critterpedia_plus/presentation/screens/home/tabs/bugs/bugs_tab.dart';
import 'package:critterpedia_plus/presentation/screens/home/tabs/fish/fish_tab.dart';
import 'package:critterpedia_plus/presentation/screens/home/tabs/sea_creatures/sea_creatures_tab.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late HomeBloc bloc;

  @override
  void initState() {
    super.initState();
    bloc = BlocProvider.of<HomeBloc>(context);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      bloc: bloc,
      builder: (context, state) => DefaultTabController(
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
                          BugsTab(bugs: state.bugs,),
                          FishTab(fish: state.fish,),
                          SeaCreaturesTab(seaCreatures: state.seaCreatures),
                        ],
                      ),
                    )
                  ],
                ),
              ),
      ),
    );
  }
}
