import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/transcation_model.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class TransactionItem extends StatelessWidget {
  const TransactionItem({super.key, required this.transcationModel});
  final TranscationModel transcationModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.circular(12),
      ),
      child: ListTile(
        title: Text(transcationModel.title, style: AppStyles.styleSemiBold16),
        subtitle: Text(
          transcationModel.date,
          style: AppStyles.styleRegular16.copyWith(
            color: const Color(0xffAAAAAA),
          ),
        ),
        trailing: Text(
          transcationModel.amount,
          style: AppStyles.styleSemiBold16.copyWith(
            color: transcationModel.isWithDrawal
                ? const Color(0xffF3735E)
                : const Color(0xff7DD97B),
          ),
        ),
      ),
    );
  }
}
