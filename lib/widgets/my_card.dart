import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/widgets/my_card_list_tile.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Container(
        decoration: ShapeDecoration(
          image: const DecorationImage(
            image: AssetImage(Assets.imagesCardBackground),
          ),
          color: const Color(0xff4EB7F2),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(12),
          ),
        ),
        child: const Column(children: [MyCardListTile()]),
      ),
    );
  }
}
