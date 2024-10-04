import 'package:critterpedia_plus/domain/core/critter.dart';
import 'package:critterpedia_plus/presentation/screens/details/details_screen.dart';
import 'package:flutter/material.dart';

class ListItem extends StatelessWidget {
  final Critter critter;

  const ListItem({super.key, required this.critter});

  @override
  Widget build(BuildContext context) {
    ThemeData localTheme = Theme.of(context);

    return Material(
      child: InkWell(
        borderRadius: BorderRadius.circular(15),
        onTap: () => Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => DetailsScreen(critter: critter),
        ),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Material(
            color: Colors.orangeAccent,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.network(
                    critter.iconUrl,
                    width: 32,
                    height: 32,
                  ),
                  Text(
                    critter.name,
                    style: localTheme.textTheme.bodySmall?.copyWith(
                        color: Colors.black, fontWeight: FontWeight.bold),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 8.0,
                  ),
                  Text(
                    critter.price,
                    style: localTheme.textTheme.bodySmall
                        ?.copyWith(color: Colors.black87),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
