import 'package:flutter/material.dart';
import 'package:iconoir_flutter/iconoir_flutter.dart';

class IconListView extends StatelessWidget {
  const IconListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Semantics(
          label: '내 정보',
          focusable: true,
          child: const User(
            color: Colors.grey,
          ),
        ),
        Semantics(
          label: '알림',
          focusable: true,
          child: const Bell(
            color: Colors.grey,
          ),
        ),
        Semantics(
          label: '설정',
          focusable: true,
          child: const Settings(
            color: Colors.grey,
          ),
        ),
        Semantics(
          label: '검색',
          focusable: true,
          child: const Search(
            color: Colors.grey,
          ),
        ),
        Semantics(
          label: '결제 정보',
          focusable: true,
          child: const MastercardCard(
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}
