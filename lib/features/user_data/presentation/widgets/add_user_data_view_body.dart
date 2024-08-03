import 'package:flutter/material.dart';
import 'add_user_data_custom_scroll.dart';

class AddUserDataViewBody extends StatelessWidget {
  const AddUserDataViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: CustomScrollView(slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: AddserDataCustomScroll(),
        ),
      ]),
    );
  }
}
