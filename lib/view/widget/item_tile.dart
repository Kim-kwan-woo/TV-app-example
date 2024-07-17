import 'package:flutter/material.dart';

class ItemTile extends StatelessWidget {
  const ItemTile({
    super.key,
    required this.poster,
    required this.isRecent,
    required this.isFirstOfTopPickForYou,
  });

  final String poster;
  final bool isRecent;
  final bool isFirstOfTopPickForYou;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (isRecent)
            const Text('Recent Input')
          else if (isFirstOfTopPickForYou)
            const Text('Top Picks For You')
          else
            const Text(''),
          const SizedBox(height: 8.0),
          Expanded(
            child: Image.network(
              poster,
            ),
          ),
        ],
      ),
    );
  }
}
