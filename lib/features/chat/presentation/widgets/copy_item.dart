import 'package:chatty_charm/core/models/svg_picture_model.dart';
import 'package:chatty_charm/core/utils/assets.dart';
import 'package:chatty_charm/core/utils/colors.dart';
import 'package:chatty_charm/core/utils/styles.dart';
import 'package:chatty_charm/core/widgets/custom_svg_picture.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/manager/copy_text/copy_text_cubit.dart';

class CopyItem extends StatelessWidget {
  const CopyItem({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    var copyText = context.read<CopyTextCubit>();
    return InkWell(
      onTap: () {
        copyText.copyText(text);
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text('Copied to clipboard'),
          backgroundColor: AppColors.primaryColor,
        ));
      },
      child: Row(
        children: [
          CustomSvgPicture(svg: SvgPictureModel(image: Assets.imagesCopy)),
          const SizedBox(width: 4),
          Text('Copy',
              style: Styles.regular17.copyWith(color: AppColors.primaryColor))
        ],
      ),
    );
  }
}
