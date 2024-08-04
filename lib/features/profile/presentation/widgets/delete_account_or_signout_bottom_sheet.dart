import 'package:chatty_charm/core/models/button_model.dart';
import 'package:chatty_charm/core/utils/colors.dart';
import 'package:chatty_charm/core/utils/styles.dart';
import 'package:chatty_charm/core/widgets/custom_button.dart';
import 'package:chatty_charm/features/profile/data/models/delete_account_or_signout_model.dart';
import 'package:chatty_charm/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DeleteAccountOrLoginBottomSheet extends StatelessWidget {
  const DeleteAccountOrLoginBottomSheet(
      {super.key, required this.deleteAccountOrSignoutModel});
  final DeleteAccountOrSignoutModel deleteAccountOrSignoutModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(deleteAccountOrSignoutModel.title, style: Styles.semiBold20),
          const SizedBox(height: 8),
          Text(deleteAccountOrSignoutModel.body, style: Styles.regular15),
          const SizedBox(height: 12),
          CustomButton(
              buttonModel: ButtonModel(
                  buttonName: deleteAccountOrSignoutModel.buttonName,
                  verticalPadding: 12,
                  style: Styles.medium22,
                  onPressed: deleteAccountOrSignoutModel.onTap)),
          const SizedBox(height: 4),
          CustomButton(
              buttonModel: ButtonModel(
                  buttonColor: AppColors.backgroundColor,
                  buttonName: S.of(context).no,
                  verticalPadding: 4,
                  style:
                      Styles.medium22.copyWith(color: AppColors.primaryColor),
                  onPressed: () => GoRouter.of(context).pop())),
        ],
      ),
    );
  }
}
