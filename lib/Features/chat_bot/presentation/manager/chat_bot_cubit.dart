import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:p/Features/chat_bot/data/model/message_model.dart';
import 'package:p/Features/chat_bot/data/repo/home_repo.dart';

part 'chat_bot_state.dart';

class ChatBotCubit extends Cubit<ChatBotState> {
  ChatBotCubit(this.homeRepo) : super(ChatBotInitial());
  final HomeRepo homeRepo;

  List<MessageModel> messageList = [];

  void sendMessage({required String data}) {
    homeRepo.sendMessage(data: data, messageList: messageList);
    emit(ChatBotSuccess(messageList));
  }

  Future<dynamic> getMessage({required String data}) async {
   await homeRepo.getMessage(data: data, messageList: messageList);
    emit(ChatBotSuccess(messageList));
  }
}
