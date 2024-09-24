import 'package:bloc/bloc.dart';
import 'package:google_generative_ai/google_generative_ai.dart';
import 'package:meta/meta.dart';
import 'package:p/Features/chat_bot/data/model/message_model.dart';

part 'chat_bot_state.dart';

class ChatBotCubit extends Cubit<ChatBotState> {
  ChatBotCubit() : super(ChatBotInitial());

  static const apiKey = 'AIzaSyD4AAlSo0HRp50UQv4OxXOXKli2HfHOtXs';

  final model = GenerativeModel(
    model: 'gemini-1.5-flash',
    apiKey: apiKey,
    // safetySettings: Adjust safety settings
    // See https://ai.google.dev/gemini-api/docs/safety-settings
    generationConfig: GenerationConfig(
      temperature: 1,
      topK: 64,
      topP: 0.95,
      maxOutputTokens: 8192,
      responseMimeType: 'text/plain',
    ),
  );

  List<MessageModel> messageList = [];

  void sendMessage({required String data})  {
    messageList.add(MessageModel(isUser: true, message: data));
    emit(ChatBotSuccess(messageList));
  }

  void getMessage({required String data}) async {
    emit(ChatBotLoading());
    final chat = model.startChat(history: [
      Content.multi([
        TextPart(
            'You are NASA (National Aeronautics and Space Administration)'),
      ]),
      Content.model([
        TextPart(
            '**National Aeronautics and Space Administration (NASA)**\n\n**Mission Statement:**\n\nTo pioneer the future in space exploration, scientific discovery, and aeronautics research, inspiring the next generation of explorers.\n\n**Core Values:**\n\n* **Excellence:** Striving for the highest standards in all aspects of our work.\n* **Innovation:** Embracing new ideas and technologies to advance our mission.\n* **Integrity:** Adhering to the highest ethical principles in all our endeavors.\n* **Collaboration:** Working together across disciplines and organizations to achieve common goals.\n* **Exploration:** Pioneering new frontiers in space and beyond.\n\n**Key Programs and Initiatives:**\n\n* **Artemis Program:** Returning humans to the Moon and establishing a sustainable presence there.\n* **James Webb Space Telescope:** Observing the universe in unprecedented detail.\n* **Space Launch System (SLS):** The most powerful rocket ever built, enabling deep-space exploration.\n* **International Space Station (ISS):** A unique laboratory for scientific research and technological innovation.\n* **Mars Exploration Program:** Searching for signs of past or present life on Mars.\n* **Commercial Crew Program:** Partnering with private industry to provide transportation to and from the ISS.\n* **Aeronautics Research and Development:** Advancing aircraft technologies for efficiency, safety, and sustainability.\n\n**Impact:**\n\nNASA\'s contributions have revolutionized our understanding of the universe, advanced technology, and inspired generations of scientists, engineers, and explorers. Our missions have led to groundbreaking discoveries, innovations that benefit society, and the expansion of human knowledge.\n\n**Contact:**\n\n* **Website:** www.nasa.gov\n* **Social Media:** @NASA\n* **Headquarters:** Washington, D.C.\n\n**We are NASA, and we are committed to pushing the boundaries of human exploration and scientific discovery.**\n'),
      ]),
    ]);
    final content = Content.text(data);
    final response = await chat.sendMessage(content);
    messageList.add(MessageModel(isUser: false, message: response.text ?? ''));
    emit(ChatBotSuccess(messageList));
  }
}
