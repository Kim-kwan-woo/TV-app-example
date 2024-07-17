import 'package:flutter/material.dart';
import 'package:tv_app/view/widget/banner_carousel.dart';
import 'package:tv_app/view/widget/icon_list_view.dart';

class BannerArea extends StatelessWidget {
  const BannerArea({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.width / 3,
      child: const Row(
        children: [
          Padding(
            padding: EdgeInsets.all(16.0),
            child: IconListView(),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: BannerCarousel(),
            ),
          ),
        ],
      ),
    );
  }
}
