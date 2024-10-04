import 'package:critterpedia_plus/domain/bugs/model/bug.dart';
import 'package:critterpedia_plus/domain/core/critter.dart';
import 'package:critterpedia_plus/domain/fish/model/fish.dart';
import 'package:critterpedia_plus/domain/sea_creatures/model/sea_creature.dart';
import 'package:critterpedia_plus/presentation/screens/widgets/critter_info_tile.dart';
import 'package:critterpedia_plus/presentation/screens/widgets/details_header.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatefulWidget {
  final Critter critter;
  const DetailsScreen({super.key, required this.critter});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.teal),
      body: Column(
        children: [
          DetailsHeader(image: widget.critter.imageUrl, name: widget.critter.name,),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CritterInfoTile(tileName: "Preço", data: widget.critter.price),
              if (widget.critter is SeaCreature) ...[
                CritterInfoTile(tileName: "Raridade", data: (widget.critter as SeaCreature).rarity),
                CritterInfoTile(tileName: "Sombra", data: (widget.critter as SeaCreature).shadow),
                CritterInfoTile(tileName: "Velocidade", data: (widget.critter as SeaCreature).speed),
              ],
              if (widget.critter is Fish) ...[
                CritterInfoTile(tileName: "Preço do Cj", data: (widget.critter as Fish).cjPrice),
                CritterInfoTile(tileName: "Local", data: (widget.critter as Fish).location),
                CritterInfoTile(tileName: "Raridade", data: (widget.critter as Fish).rarity),
                CritterInfoTile(tileName: "Sombra", data: (widget.critter as Fish).shadow),
              ],
              if (widget.critter is Bug) ...[
                CritterInfoTile(tileName: "Preço do Flick", data: (widget.critter as Bug).flickPrice),
                CritterInfoTile(tileName: "Local", data: (widget.critter as Bug).location),
                CritterInfoTile(tileName: "Raridade", data: (widget.critter as Bug).rarity),
              ],
            ],
          )
        ],
      ),
    );
  }
}
