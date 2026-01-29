import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/user_info_model.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/widgets/user_info_list_tile.dart';

class LatestTransactionListView extends StatelessWidget {
  const LatestTransactionListView({super.key});

  static final items = const [
    UserInfoModel(
      image: Assets.imagesAvatar1,
      title: "ahmad",
      subTilte: "ahmad@gmail.com",
    ),
    UserInfoModel(
      image: Assets.imagesAvatar2,
      title: "ahmad",
      subTilte: "ahmad@gmail.com",
    ),
    UserInfoModel(
      image: Assets.imagesAvatar3,
      title: "ahmad",
      subTilte: "ahmad@gmail.com",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    // return SingleChildScrollView(
    //   scrollDirection: Axis.horizontal,
    //   child: Row(
    //     children: items
    //         .map(
    //           (e) => IntrinsicWidth(child: UserInfoListTile(userInfoModel: e)),
    //         )
    //         .toList(),
    //   ),
    // );

    // return Column(
    //   children: items.map((e) => UserInfoListTile(userInfoModel: e)).toList(),
    // );

    return SizedBox(
      height: 70,
      child: ListView.builder(
        itemCount: items.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return IntrinsicWidth(
            child: UserInfoListTile(userInfoModel: items[index]),
          );
        },
      ),
    );
  }
}
