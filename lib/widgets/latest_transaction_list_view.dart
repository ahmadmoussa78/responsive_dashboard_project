import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/user_info_details.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/widgets/user_info_list_tile.dart';

class LatestTransactionListView extends StatelessWidget {
  const LatestTransactionListView({super.key});

  static final items = const [
    UserInfoDetails(
      image: Assets.imagesAvatar1,
      title: "ahmad",
      subTilte: "ahmad@gmail.com",
    ),
    UserInfoDetails(
      image: Assets.imagesAvatar2,
      title: "ahmad",
      subTilte: "ahmad@gmail.com",
    ),
    UserInfoDetails(
      image: Assets.imagesAvatar3,
      title: "ahmad",
      subTilte: "ahmad@gmail.com",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return UserInfoListTile(userInfoDetails: items[index]);
      },
    );
  }
}
