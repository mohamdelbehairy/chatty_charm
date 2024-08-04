import 'package:flutter/material.dart';

import '../helper/custom_loading_animation_indicator.dart';

class NoNetworkView extends StatelessWidget {
  const NoNetworkView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: customLoadingAnimationIndicator()),
    );
  }
}
