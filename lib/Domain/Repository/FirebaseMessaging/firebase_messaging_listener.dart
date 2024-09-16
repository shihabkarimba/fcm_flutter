import 'package:firebase_messaging/firebase_messaging.dart';

setUpMessaging() {}

Future<void> backgroundHandler(RemoteMessage message) async {
  print(message.messageId);
  print('Handling a background message ${message.messageId}');
}
