import 'package:flutter/material.dart';

class ListItem extends StatelessWidget {
  final String name;
  final String price;
  final String iconUrl;

  const ListItem({super.key, required this.name, required this.price, required this.iconUrl, });

  @override
  Widget build(BuildContext context) {
    ThemeData localTheme = Theme.of(context);

    return Material(
      child: InkWell(
        borderRadius: BorderRadius.circular(15),
        onTap: (){},
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Material(
            color: Colors.lightBlueAccent,
            child: InkWell(
              onTap: () {},
              splashColor: Colors.white10,
              highlightColor: Colors.white10,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.network(
                      iconUrl,
                      width: 40,
                      height: 40,
                    ),
                    Text(
                      name,
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
                      price,
                      style: localTheme.textTheme.bodySmall
                          ?.copyWith(color: Colors.black87),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
