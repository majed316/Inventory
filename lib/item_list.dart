import 'package:flutter/material.dart';
import 'item_row.dart';
import 'data.dart';

class List extends StatelessWidget {
  Widget build(BuildContext context) {
    return ListView(children: <ItemRow>[
      ItemRow(
        item: Item(
            id: 1,
            title: "fish oil",
            image_path: "fish_oil.png",
            servings: 100,
            consumed: 0)
      ),
      ItemRow(
        item: Item(
            id: 2,
            title: "Gaba",
            image_path: "gaba.png",
            servings: 150,
            consumed: 5)
      ),
      ItemRow(
        item: Item(
            id: 3,
            title: "isolate",
            image_path: "isolate.png",
            servings: 88,
            consumed: 9)
      ),
      ItemRow(
        item: Item(
            id: 4,
            title: "Peanut Butter",
            image_path: "peanut.png",
            servings: 15,
            consumed: 3)
      ),
      ItemRow(
        item: Item(
            id: 5,
            title: "Super Fodd",
            image_path: "superfood.png",
            servings: 250,
            consumed: 15)
      )
    ]);
  }
}
