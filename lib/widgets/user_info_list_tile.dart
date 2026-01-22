import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dashboard/models/user_info_details.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class UserInfoListTile extends StatelessWidget {
  const UserInfoListTile({super.key, required this.userInfoDetails});

  final UserInfoDetails userInfoDetails;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: const Color(0xFFFAFAFA),
      child: ListTile(
        leading: SvgPicture.asset(userInfoDetails.image),
        title: Text(userInfoDetails.title, style: AppStyles.styleSemiBold16),
        subtitle: Text(
          userInfoDetails.subTilte,
          style: AppStyles.styleRegular12,
        ),
      ),
    );
  }
}
