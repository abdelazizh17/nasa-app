import 'package:flutter/material.dart';
import 'package:p/Features/chat_bot/data/model/message_model.dart';

class ChatBubleGemini extends StatelessWidget {
  const ChatBubleGemini({super.key, required this.messageModel});
  final MessageModel messageModel;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        padding: const EdgeInsets.all(15), //padding to child
        margin: const EdgeInsets.all(16), //margin to widget
        decoration: const BoxDecoration(
          color: Color(0xff3d2f80),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(24),
            topRight: Radius.circular(24),
            bottomRight: Radius.circular(24),
          ),
        ),
        child: Text(
          messageModel.message,
          style: const TextStyle(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.normal),
        ),
      ),
    );
  }
}
