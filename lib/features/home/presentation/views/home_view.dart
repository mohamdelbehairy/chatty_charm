import 'package:chatty_charm/features/home/presentation/widgets/home_view_body.dart';
import 'package:flutter/material.dart';

import '../widgets/home_view_app_bar.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeViewAppBar(context),
      body: const HomeViewBody(),
    );
  }
}
