import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:p/Features/chat_bot/data/chat_bot_cubit.dart';
import 'package:p/Features/chat_bot/presentation/view/widgets/appbar_title.dart';
import 'package:p/Features/chat_bot/presentation/view/widgets/chat_view_body.dart';

class ChatBotView extends StatelessWidget {
  const ChatBotView({super.key});

  static String id = 'ChatView';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ChatBotCubit(),
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          elevation: 0,
          backgroundColor: const Color(0xff04040F),
          title: const AppBarTitle(),
        ),
        body: const ChatBotViewBody(),
      ),
    );
  }
}
