import 'package:p/Features/chat_bot/data/model/message_model.dart';

abstract class HomeRepo {
  void sendMessage({required String data,required List<MessageModel> messageList}) {}
  Future<dynamic> getMessage({required String data,required List<MessageModel> messageList}) async {}
}
