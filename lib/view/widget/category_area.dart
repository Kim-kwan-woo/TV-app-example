import 'package:flutter/material.dart';
import 'package:tv_app/view/widget/category_tile.dart';

const category = [
  {'name': 'Home Office', 'color': Colors.green},
  {'name': 'Game', 'color': Colors.blue},
  {'name': 'Music', 'color': Colors.orange},
  {'name': 'Home Hub', 'color': Colors.amber},
  {'name': 'Sport', 'color': Colors.indigoAccent},
  {'name': 'Movie', 'color': Colors.purpleAccent},
  {'name': 'SNS', 'color': Colors.brown},
  {'name': 'Event', 'color': Colors.limeAccent},
];

class CategoryArea extends StatelessWidget {
  const CategoryArea({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      margin: const EdgeInsets.only(
        top: 8.0,
        bottom: 8.0,
        left: 8.0,
      ),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: category
            .asMap()
            .entries
            .map(
              (e) => IndexedSemantics(
                index: e.key,
                child: CategoryTile(category: e.value),
              ),
            )
            .toList(),
      ),
    );
  }
}
