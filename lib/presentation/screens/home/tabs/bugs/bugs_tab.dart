import 'package:critterpedia_plus/domain/bugs/model/bug.dart';
import 'package:critterpedia_plus/presentation/screens/home/tabs/widgets/list_item.dart';
import 'package:flutter/material.dart';

class BugsTab extends StatelessWidget {
  final List<Bug> bugs;

  const BugsTab({super.key, required this.bugs});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      children: List.generate(
        bugs.length,
        (index) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListItem(
            name: bugs[index].name,
            iconUrl: bugs[index].iconUrl,
            price: bugs[index].price,
          ),
        ),
      ),
    );
  }
}
