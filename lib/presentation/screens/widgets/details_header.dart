import 'package:critterpedia_plus/presentation/extensions/string_extension.dart';
import 'package:flutter/material.dart';

class DetailsHeader extends StatelessWidget {
  final String image;
  final String name;

  const DetailsHeader({super.key, required this.image, required this.name});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: const EdgeInsets.only(top: 56, bottom: 8),
          alignment: Alignment.center,
          decoration: const BoxDecoration(
              color: Colors.teal,
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(24), bottomRight: Radius.circular(24))
          ),
          child: Image.network(
            image,
            width: 100,
            height: 100,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16, top: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name.capitalize(),
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    color: Colors.white, fontWeight: FontWeight.bold),
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 4,),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white12,
                  borderRadius: BorderRadius.circular(32),
                ),
                padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                child: Text(
                  "Fish",
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: Colors.white),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
