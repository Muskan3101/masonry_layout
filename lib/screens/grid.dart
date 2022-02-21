import 'package:flutter/material.dart';
import 'package:masonry_grid/masonry_grid.dart';
import 'package:masonry_layout/components/profilecard.dart';
import 'package:masonry_layout/contents/constants.dart';

class Grid extends StatefulWidget {
  const Grid({Key? key}) : super(key: key);

  @override
  _Grid createState() => _Grid();
}

class _Grid extends State<Grid> {
  late List<Widget> cards;

  @override
  void initState() {
    cards = List.generate(
        IMAGE_LIST.length,
        (i) => ProfileCard(imgSrc: IMAGE_LIST[i]));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Masonry Layout"),
      ),
      backgroundColor: Colors.black,
        body: CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
              padding: const EdgeInsets.only(),
              child: MasonryGrid(
                column: 3,
                crossAxisSpacing: 6,
                mainAxisSpacing: 10,
                children: cards,
              )),
        ),
      ],
    ));
  }
}
