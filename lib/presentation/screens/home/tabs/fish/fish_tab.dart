import 'package:critterpedia_plus/presentation/screens/home/tabs/fish/fish_bloc.dart';
import 'package:critterpedia_plus/presentation/screens/home/tabs/fish/fish_state.dart';
import 'package:critterpedia_plus/presentation/screens/home/tabs/widgets/list_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FishTab extends StatefulWidget {
  const FishTab({super.key});

  @override
  State<FishTab> createState() => _FishTabState();
}

class _FishTabState extends State<FishTab> {
  late final FishBloc bloc;

  @override
  void initState() {
    super.initState();
    bloc = BlocProvider.of<FishBloc>(context);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    bloc.init();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FishBloc, FishState>(
      bloc: bloc,
      builder: (context, state) => Builder(
        builder: (context) {
          return GridView.count(
            crossAxisCount: 3,
            children: List.generate(
              state.fish.length,
              (index) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListItem(
                  name: state.fish[index].name,
                  iconUrl: state.fish[index].iconUrl,
                  price: state.fish[index].price,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
