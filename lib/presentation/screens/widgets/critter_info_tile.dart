import 'package:flutter/material.dart';

class CritterInfoTile extends StatelessWidget {
  final String tileName;
  final String data;
  const CritterInfoTile({super.key, required this.tileName, required this.data});

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(tileName),
        Text(data),
      ],
    );
  }
}
