import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
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
            fit: BoxFit.fill,
            image: AssetImage(Assets.imagesCardBackground),
          ),
          color: const Color(0xff4EB7F2),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(12),
          ),
        ),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const MyCardListTile(),
            const Expanded(child: SizedBox()),
            Padding(
              padding: const EdgeInsets.only(right: 26),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "0000 0000 0000 0000",
                    style: AppStyles.styleSemiBold24(
                      context,
                    ).copyWith(color: Colors.white),
                  ),
                   Text("12/20 - 124", style: AppStyles.styleRegular16(context),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 26),
          ],
        ),
      ),
    );
  }
}
