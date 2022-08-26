import '../enums/type_message.dart';

class Message {
  String messageId;

  String receptorId;
  String receptorMessageBody;

  String emissorMessageBody;
  String messageTime;
  String receptorPhotoUrl;

  String emissorPhotoUrl;
  TypeMessage typeMessage = TypeMessage.NORMAL;
  String whoIsMessage;

  Message(
      {required this.messageId,
      required this.emissorMessageBody,
      required this.emissorPhotoUrl,
      required this.messageTime,
      required this.receptorId,
      required this.receptorMessageBody,
      required this.receptorPhotoUrl,
      required this.whoIsMessage});

  factory Message.toJson(Map<String, dynamic> map) {
    return Message(
        messageId: map['messageId'],
        emissorMessageBody: map['emissorMessageBody'],
        emissorPhotoUrl: map['emissorPhotoUrl'],
        messageTime: map['messageTime'],
        receptorId: map['receptorId'],
        receptorMessageBody: map['receptorMessageBody'],
        receptorPhotoUrl: map['receptorPhotoUrl'],
        whoIsMessage: map['whoIsMessage']);
  }
}

final List<Message> LIST_MESSAGES_USERS = [
  Message(
      messageId: "1",
      emissorMessageBody: "Ola tudo bem?",
      emissorPhotoUrl: "images/img2.jpg",
      messageTime: "2:30pm",
      receptorId: "2",
      receptorMessageBody: "",
      receptorPhotoUrl: "images/img4.jpg",
      whoIsMessage: "EMISSOR")
];
