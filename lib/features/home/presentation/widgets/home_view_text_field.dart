import 'package:chatty_charm/core/manager/is_arabic/is_arabic_cubit.dart';
import 'package:chatty_charm/core/models/text_field_model.dart';
import 'package:chatty_charm/core/utils/assets.dart';
import 'package:chatty_charm/core/widgets/custom_text_field.dart';
import 'package:chatty_charm/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class HomeViewTextField extends StatelessWidget {
  const HomeViewTextField(
      {super.key, required this.controller, required this.onPressed});
  final TextEditingController controller;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    var isArabic = context.read<IsArabicCubit>().isArabic();
    return CustomTextField(
      textFieldModel: TextFieldModel(
        controller: controller,
        hintText: S.of(context).ask_me,
        suffixIcon: Padding(
          padding: EdgeInsets.only(
              left: isArabic ? 8.0 : 0.0, right: isArabic ? 0.0 : 8.0),
          child: IconButton(
              onPressed: onPressed,
              icon: Transform.rotate(
                  angle: isArabic ? 180 * 3.14 / 180 : 360 * 3.14 / 180,
                  child: SvgPicture.asset(Assets.imagesSendMessage))),
        ),
      ),
    );
  }
}
