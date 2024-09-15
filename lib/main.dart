import 'package:fcm_flutter/Domain/Repository/FirebaseAuthRepo/firebase_auth_repo.dart';
import 'package:fcm_flutter/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
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
  await GetIt.I<FirebaseAuthRepository>().requestFcmPermission();
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
