import 'package:chatty_charm/core/manager/get_user_data/get_user_data_cubit.dart';
import 'package:chatty_charm/core/models/svg_picture_model.dart';
import 'package:chatty_charm/core/utils/assets.dart';
import 'package:chatty_charm/core/utils/styles.dart';
import 'package:chatty_charm/core/widgets/custom_svg_picture.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfileInfoSection extends StatelessWidget {
  const ProfileInfoSection({super.key});

  @override
  Widget build(BuildContext context) {
    var user = context.read<GetUserDataCubit>();
    return BlocBuilder<GetUserDataCubit, GetUserDataState>(
      builder: (context, state) {
        var userData = user.user.firstWhere((element) =>
            element.userID == FirebaseAuth.instance.currentUser!.uid);
        return Column(
          children: [
            const SizedBox(height: 16),
            CustomSvgPicture(
                svg: SvgPictureModel(
                    image: userData.gender == "male" || userData.gender == "ذكر"
                        ? Assets.imagesMale
                        : Assets.imagesFemale,
                    fit: BoxFit.scaleDown)),
            Text('${userData.firstName} ${userData.lastName}',
                style: Styles.semiBold28),
            const SizedBox(height: 4),
            Text('@${userData.username}', style: Styles.regular20),
            const SizedBox(height: 16),
          ],
        );
      },
    );
  }
}
