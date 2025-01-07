import 'package:chatty_charm/core/utils/colors.dart';
import 'package:chatty_charm/core/utils/launch_url_service.dart';
import 'package:chatty_charm/core/utils/styles.dart';
import 'package:chatty_charm/generated/l10n.dart';
import 'package:flutter/material.dart';

class ReadAndAgreePolicyWidget extends StatelessWidget {
  const ReadAndAgreePolicyWidget(
      {super.key, required this.onTap, required this.isClick});
  final Function() onTap;
  final bool isClick;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 4),
        InkWell(
          onTap: onTap,
          child: Container(
            height: 20,
            width: 20,
            decoration: BoxDecoration(
                color: isClick ? AppColors.primaryColor : Colors.transparent,
                border: Border.all(color: AppColors.primaryColor),
                borderRadius: BorderRadius.circular(4)),
            child: Transform.rotate(
              angle: 0,
              child: const Icon(
                Icons.done,
                color: AppColors.whiteColor,
                size: 16,
              ),
            ),
          ),
        ),
        const SizedBox(width: 8),
        Text(S.of(context).read_and_agree_policy, style: Styles.regular17),
        TextButton(
          onPressed: () => LaunchUrlService.launchURL(),
          child: Text(S.of(context).privacy_policy,
              style: Styles.semiBold20.copyWith(color: Colors.blue.shade300)),
        )
      ],
    );
  }
}
