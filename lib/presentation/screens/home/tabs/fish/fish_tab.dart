import 'package:critterpedia_plus/domain/fish/model/fish.dart';
import 'package:critterpedia_plus/presentation/screens/home/tabs/widgets/list_item.dart';
import 'package:flutter/material.dart';

class FishTab extends StatelessWidget {
  final List<Fish> fish;

  const FishTab({super.key, required this.fish});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      children: List.generate(
        fish.length,
        (index) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListItem(
            name: fish[index].name,
            iconUrl: fish[index].iconUrl,
            price: fish[index].price,
          ),
        ),
      ),
    );
  }
}
