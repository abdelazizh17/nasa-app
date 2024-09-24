import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:p/Features/chat_bot/presentation/manager/chat_bot_cubit.dart';
import 'package:p/Features/chat_bot/presentation/view/widgets/chat_bubble.dart';
import 'package:p/Features/chat_bot/presentation/view/widgets/chat_bubble_gemini.dart';

class ChatListView extends StatelessWidget {
  const ChatListView({
    super.key,
    required ScrollController controller,
  }) : _controller = controller;

  final ScrollController _controller;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChatBotCubit, ChatBotState>(
      builder: (context, state) {
        var messageList = BlocProvider.of<ChatBotCubit>(context).messageList;
        WidgetsBinding.instance.addPostFrameCallback((_) {
          _controller.animateTo(
            _controller.position.maxScrollExtent,
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeIn,
          );
        });
        return Expanded(
          child: ListView.builder(
            controller: _controller,
            itemCount: messageList.length,
            itemBuilder: (context, index) {
              return messageList[index].isUser == true
                  ? ChatBuble(messageModel: messageList[index])
                  : ChatBubleGemini(messageModel: messageList[index]);
            },
          ),
        );
      },
    );
  }
}
