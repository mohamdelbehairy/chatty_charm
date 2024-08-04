import 'package:chatty_charm/core/manager/select_language/select_language_cubit.dart';
import 'package:chatty_charm/core/models/button_model.dart';
import 'package:chatty_charm/core/utils/styles.dart';
import 'package:chatty_charm/core/widgets/custom_button.dart';
import 'package:chatty_charm/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LanguageBottomSheet extends StatelessWidget {
  const LanguageBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    var selectLang = context.read<SelectLanguageCubit>();
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(S.of(context).select_language, style: Styles.semiBold20),
        const SizedBox(height: 12),
        CustomButton(
          buttonModel: ButtonModel(
              borderRadius: 30,
              verticalPadding: 12,
              style: Styles.medium22,
              buttonName: S.of(context).arabic,
              onPressed: () {
                Navigator.pop(context);
                selectLang.selectLanguage(lang: 'ar');
              }),
        ),
        const SizedBox(height: 8),
        CustomButton(
            buttonModel: ButtonModel(
                borderRadius: 30,
                verticalPadding: 12,
                style: Styles.medium22,
                buttonName: S.of(context).english,
                onPressed: () {
                  Navigator.pop(context);
                  selectLang.selectLanguage(lang: 'eng');
                })),
      ],
    );
  }
}
