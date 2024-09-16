import 'package:fcm_flutter/Domain/Repository/FirebaseMessaging/firebase_messaging_listener.dart';
import 'package:fcm_flutter/Domain/Repository/FirebaseMessaging/firebase_messaging_repo.dart';
import 'package:fcm_flutter/Presentation/Shared/Widgets/toast_widget.dart';
import 'package:fcm_flutter/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import 'Core/Router/route.dart';
import 'Core/Theme/them_data.dart';
import 'Domain/DependencyManager/dependency_manager.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await setUpDependencies();
  await GetIt.I<FirebaseMessagingRepo>().requestFcmPermission();

  FirebaseMessaging.onBackgroundMessage(backgroundHandler);
  FirebaseMessaging.onMessageOpenedApp.listen((val) {
    router.goNamed(Routes.profile.name);
  });

  FirebaseMessaging.onMessage.listen((RemoteMessage message) {
    showToast(msg: 'Message successfully got');
  });
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: router,
      theme: themeData,
    );
  }
}
