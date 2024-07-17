import 'package:flutter/material.dart';

class CategoryTile extends StatelessWidget {
  const CategoryTile({super.key, required this.category});

  final Map<String, Object> category;

  @override
  Widget build(BuildContext context) {
    return Semantics(
      focusable: true,
      child: Container(
        width: 300,
        alignment: Alignment.center,
        margin: const EdgeInsets.only(right: 16.0),
        decoration: BoxDecoration(
          color: category['color'] as Color,
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(16.0),
            bottomLeft: Radius.circular(16.0),
            bottomRight: Radius.circular(16.0),
          ),
        ),
        child: Text(
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          category['name'] as String,
        ),
      ),
    );
  }
}
