import 'package:flutter/material.dart';

import '../widgets/profile_view_app_bar.dart';
import '../widgets/profile_view_body.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: profileViewAppBar(context),
      body: const ProfileViewBody(),
    );
  }
}
