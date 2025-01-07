import 'package:chatty_charm/core/utils/app_router.dart';
import 'package:chatty_charm/core/utils/launch_url_service.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/delete_and_logout_account.dart';
import '../../../../core/widgets/custom_bottom_sheet.dart';
import 'language_bottom_sheet.dart';

onTap(BuildContext context, int index) {
  if (index == 0) {
    AppRouter.push(context, AppRouter.editUserDataView);
  } else if (index == 1) {
    customBottomSheet(context: context, child: const LanguageBottomSheet());
  } else if (index == 2) {
    AppRouter.push(context, AppRouter.chatView);
  } else if (index == 3) {
    LaunchUrlService.launchURL();
  } else if (index == 4) {
    LaunchUrlService.sendEmail();
  } else if (index == 5) {
    deleteAccount(context);
  } else {
    logout(context);
  }
}
