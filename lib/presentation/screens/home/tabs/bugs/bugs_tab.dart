import 'package:critterpedia_plus/presentation/screens/home/tabs/bugs/bugs_bloc.dart';
import 'package:critterpedia_plus/presentation/screens/home/tabs/bugs/bugs_state.dart';
import 'package:critterpedia_plus/presentation/screens/home/tabs/widgets/list_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BugsTab extends StatefulWidget {
  const BugsTab({super.key});

  @override
  State<BugsTab> createState() => _BugsTabState();
}

class _BugsTabState extends State<BugsTab> {
  late final BugsBloc bloc;

  @override
  void initState() {
    super.initState();
    bloc = BlocProvider.of<BugsBloc>(context);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    bloc.init();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BugsBloc, BugsState>(
      bloc: bloc,
      builder: (context, state) => Builder(
        builder: (context) {
          return GridView.count(
            crossAxisCount: 3,
            children: List.generate(
              state.bugs.length,
              (index) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListItem(bug: state.bugs[index]),
              ),
            ),
          );
        },
      ),
    );
  }
}
