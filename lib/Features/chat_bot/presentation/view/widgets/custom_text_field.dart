import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:p/Features/chat_bot/data/chat_bot_cubit.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.messageController,
    required ScrollController controller,
  }) : _controller = controller;

  final TextEditingController messageController;
  final ScrollController _controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: TextField(
        style: const TextStyle(
          color: Color(0xfff9f6fb),
        ),
        controller: messageController,
        onSubmitted: (data) {
          BlocProvider.of<ChatBotCubit>(context).sendMessage(data: data);
          messageController.clear();
          _controller.animateTo(
            _controller.position.maxScrollExtent,
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeIn,
          );
          BlocProvider.of<ChatBotCubit>(context).getMessage(data: data);
        },
        decoration: InputDecoration(
          suffixIcon: IconButton(
              color: const Color(0xfff9f6fb),
              onPressed: () {
                BlocProvider.of<ChatBotCubit>(context)
                    .sendMessage(data: messageController.text);
                messageController.clear();
                _controller.animateTo(
                  _controller.position.maxScrollExtent,
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.easeIn,
                );
                BlocProvider.of<ChatBotCubit>(context)
                    .getMessage(data: messageController.text);
                FocusScope.of(context).unfocus();
              },
              icon: const Icon(Icons.send)),
          hintText: 'Send Message',
          hintStyle: const TextStyle(
            color: Color(0xfff9f6fb),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: const BorderSide(
              color: Colors.white,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: const BorderSide(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
