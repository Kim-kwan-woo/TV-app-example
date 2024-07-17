import 'package:flutter/material.dart';

final imageList = [
  'assets/app/AppleArcade.png',
  'assets/app/AppleMusic.png',
  'assets/app/CGV.png',
  'assets/app/Disney+.png',
  'assets/app/GooglePlay.png',
  'assets/app/HBOGO.png',
  'assets/app/LotteMart.png',
  'assets/app/Netflix.png',
  'assets/app/NintendoOnline.png',
  'assets/app/PrimeVideo.png',
  'assets/app/Spotify(Alt).png',
  'assets/app/Steam.png',
  'assets/app/UBISOFT+.png',
  'assets/app/XBOXGamePass.png',
];

class AppArea extends StatelessWidget {
  const AppArea({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      margin: const EdgeInsets.only(
        top: 8.0,
        bottom: 8.0,
        left: 8.0,
      ),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: imageList.length,
        semanticChildCount: imageList.length,
        itemBuilder: (context, index) => Container(
          width: 100,
          height: 100,
          margin: const EdgeInsets.only(right: 16.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.0),
          ),
          clipBehavior: Clip.antiAlias,
          child: Semantics(
            focusable: true,
            label: imageList[index].split('/').last.split('.').first,
            child: Image.asset(
              imageList[index],
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
