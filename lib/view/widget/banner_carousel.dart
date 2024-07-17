import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class BannerCarousel extends StatelessWidget {
  const BannerCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: [
        Semantics(
          focusable: true,
          label: 'spider man',
          child: IndexedSemantics(
            index: 0,
            child: Image.asset(
              'assets/banner/spider-man.jpg',
              fit: BoxFit.cover,
              width: double.infinity,
              semanticLabel: 'spider man',
            ),
          ),
        ),
        Semantics(
          focusable: true,
          label: 'iron man',
          child: IndexedSemantics(
            index: 1,
            child: Image.asset(
              'assets/banner/iron-man.jpg',
              fit: BoxFit.cover,
              width: double.infinity,
            ),
          ),
        ),
        Semantics(
          focusable: true,
          label: 'rick and morty',
          child: IndexedSemantics(
            index: 2,
            child: Image.asset(
              'assets/banner/rick-and-morty.png',
              fit: BoxFit.cover,
              width: double.infinity,
            ),
          ),
        ),
      ],
      options: CarouselOptions(
        autoPlayInterval: const Duration(seconds: 3),
        autoPlay: true,
        viewportFraction: 1.0,
      ),
    );
  }
}
