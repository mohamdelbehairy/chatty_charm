import 'package:chatty_charm/core/manager/is_arabic/is_arabic_cubit.dart';
import 'package:chatty_charm/core/utils/colors.dart';
import 'package:chatty_charm/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserDataDropDownButton extends StatelessWidget {
  const UserDataDropDownButton({super.key, required this.gender});
  final TextEditingController gender;

  @override
  Widget build(BuildContext context) {
    var isArabic = context.read<IsArabicCubit>().isArabic();
    return Positioned(
      top: MediaQuery.sizeOf(context).height * .005,
      right: isArabic ? null : 4.0,
      left: isArabic ? 4.0 : null,
      child: DropdownButton(
          dropdownColor: AppColors.backgroundColor,
          borderRadius: BorderRadius.circular(12),
          underline: const SizedBox(),
          icon: const Icon(Icons.arrow_drop_down, size: 35),
          items: [
            DropdownMenuItem(
                value: S.of(context).male, child: Text(S.of(context).male)),
            DropdownMenuItem(
                value: S.of(context).female, child: Text(S.of(context).female)),
          ],
          onChanged: (value) {
            gender.text = value.toString();
          }),
    );
  }
}
