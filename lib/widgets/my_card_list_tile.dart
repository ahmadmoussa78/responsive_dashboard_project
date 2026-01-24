import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class MyCardListTile extends StatelessWidget {
  const MyCardListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.only(left: 31, top: 16, right: 42),
      title: Text(
        "Name",
        style: AppStyles.styleRegular16.copyWith(color: Colors.white),
      ),
      subtitle: const Text("Syah Bandi", style: AppStyles.styleMedium20),
      trailing: SvgPicture.asset(Assets.imagesGallery),
    );
  }
}
