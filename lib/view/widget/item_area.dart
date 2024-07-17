import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:tv_app/view/provider/providers.dart';
import 'package:tv_app/view/widget/item_tile.dart';

class ItemArea extends ConsumerWidget {
  const ItemArea({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      height: 300,
      margin: const EdgeInsets.only(
        top: 8.0,
        bottom: 8.0,
        left: 8.0,
      ),
      child: switch (ref.watch(imagesProvider)) {
        AsyncData(:final value) => ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: value['data'].length,
            semanticChildCount: value['data'].length,
            itemBuilder: (context, index) {
              return Semantics(
                label: '${value['data'][index]['title']}',
                focusable: true,
                child: ItemTile(
                  poster: value['data'][index]['poster'],
                  isRecent: index == 0,
                  isFirstOfTopPickForYou: index == 1,
                ),
              );
            },
          ),
        AsyncError(:final error) => Text(error.toString()),
        _ => const CircularProgressIndicator(),
      },
    );
  }
}
