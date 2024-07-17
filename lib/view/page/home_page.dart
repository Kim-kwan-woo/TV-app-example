import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tv_app/view/widget/app_area.dart';
import 'package:tv_app/view/widget/banner_area.dart';
import 'package:tv_app/view/widget/category_area.dart';
import 'package:tv_app/view/widget/item_area.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Semantics(
              label: 'banner',
              focusable: true,
              child: const BannerArea(),
            ),
            Semantics(
              label: 'category',
              focusable: true,
              child: const CategoryArea(),
            ),
            Semantics(
              label: 'apps',
              focusable: true,
              child: const AppArea(),
            ),
            Semantics(
              label: 'movies',
              focusable: true,
              child: const ItemArea(),
            ),
          ],
        ),
      ),
    );
  }
}
