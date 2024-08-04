import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/manager/copy_text/copy_text_cubit.dart';
import '../../../../core/manager/get_user_data/get_user_data_cubit.dart';
import '../../../../core/manager/is_arabic/is_arabic_cubit.dart';
import '../../../../core/manager/select_language/select_language_cubit.dart';
import '../../../chat/data/manager/get_messages/get_messages_cubit.dart';
import '../../../home/data/manager/chat/chat_cubit.dart';
import '../widgets/custom_material_app.dart';

class ChattyCharm extends StatelessWidget {
  const ChattyCharm({super.key, required this.view});
  final Widget view;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => IsArabicCubit()),
        BlocProvider(create: (context) => SelectLanguageCubit()),
        BlocProvider(create: (context) => GetUserDataCubit()),
        BlocProvider(create: (context) => CopyTextCubit()),
        
        BlocProvider(create: (context) => GetMessagesCubit()..getMessages()),
        BlocProvider(create: (context) => ChatCubit()),
      ],
      child: BlocBuilder<SelectLanguageCubit, SelectLanguageState>(
        builder: (context, state) {
          return CustomMaterialApp(view: view);
        },
      ),
    );
  }
}
