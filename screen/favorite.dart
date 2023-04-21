import 'package:flutter/material.dart';
import 'package:recipe/consent/appbar.dart';

class Favorite extends StatelessWidget {
  const Favorite({super.key});

  get font => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appbar(),
        body: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Text(
                'your favorites',
                style: TextStyle(
                  fontSize: 20,
                  color: font,
                  fontFamily: 'R',
                ),
              ),
            )
          ],
        ));
  }
}