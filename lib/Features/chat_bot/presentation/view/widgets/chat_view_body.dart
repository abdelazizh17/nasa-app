import 'package:flutter/material.dart';
import 'package:p/Features/chat_bot/presentation/view/widgets/chat_image_background.dart';
import 'package:p/Features/chat_bot/presentation/view/widgets/chat_list_view.dart';
import 'package:p/Features/chat_bot/presentation/view/widgets/custom_text_field.dart';

class ChatBotViewBody extends StatefulWidget {
  const ChatBotViewBody({super.key});

  @override
  State<ChatBotViewBody> createState() => _ChatBotViewBodyState();
}

class _ChatBotViewBodyState extends State<ChatBotViewBody> {
  final ScrollController _controller = ScrollController();
  TextEditingController messageController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const ChatImageBackGround(),
        Column(
          children: [
            ChatListView(controller: _controller),
            CustomTextField(
                messageController: messageController, controller: _controller),
          ],
        ),
      ],
    );
  }
}

