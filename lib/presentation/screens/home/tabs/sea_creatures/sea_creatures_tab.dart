import 'package:critterpedia_plus/domain/sea_creatures/model/sea_creature.dart';
import 'package:critterpedia_plus/presentation/screens/home/tabs/widgets/list_item.dart';
import 'package:flutter/material.dart';

class SeaCreaturesTab extends StatelessWidget {
  final List<SeaCreature> seaCreatures;

  const SeaCreaturesTab({super.key, required this.seaCreatures});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      children: List.generate(
        seaCreatures.length,
        (index) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListItem(
              name: seaCreatures[index].name,
              price: seaCreatures[index].price,
              iconUrl: seaCreatures[index].iconUrl),
        ),
      ),
    );
  }
}
