part of 'chat_bot_cubit.dart';

@immutable
sealed class ChatBotState {}

final class ChatBotInitial extends ChatBotState {}

final class ChatBotSuccess extends ChatBotState {
  final List<MessageModel> messageList;
  ChatBotSuccess(this.messageList);
}


final class ChatBotLoading extends ChatBotState {}
