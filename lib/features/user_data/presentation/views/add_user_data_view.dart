import 'package:flutter/material.dart';

import '../widgets/add_user_data_view_body.dart';

class AddUserDataView extends StatelessWidget {
  const AddUserDataView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: AddUserDataViewBody(),
    );
  }
}
