import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fcm_flutter/Domain/Repository/FirebaseMessaging/firebase_messaging_repo.dart';
import 'package:fcm_flutter/Domain/Repository/FirebaseMessaging/firebase_messaging_repo_impl.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../Repository/FirebaseAuthRepo/firebase_auth_repo.dart';
import '../Repository/FirebaseAuthRepo/firebase_auth_repo_impl.dart';
import '../Repository/LocalAuthRepo/local_auth_repo.dart';
import '../Repository/LocalAuthRepo/local_auth_repo_impl.dart';

final GetIt getIt = GetIt.instance;

setUpDependencies() async {
  await getUtils();
  await getRepositories();
}

getUtils() async {
  GetIt.I.registerSingleton<FirebaseAuth>(FirebaseAuth.instance);
  GetIt.I.registerSingleton<FirebaseFirestore>(FirebaseFirestore.instance);
  GetIt.I.registerSingleton<FirebaseMessaging>(FirebaseMessaging.instance);

  GetIt.I.registerSingletonAsync<SharedPreferences>(
      () => SharedPreferences.getInstance());
  await GetIt.instance.isReady<SharedPreferences>();
}

getRepositories() async {
  GetIt.I.registerLazySingleton<LocalAuthRepository>(
      () => LocalAuthRepositoryImpl());
  GetIt.I.registerLazySingleton<FirebaseAuthRepository>(
      () => FirebaseAuthRepositoryImpl());
  GetIt.I.registerLazySingleton<FirebaseMessagingRepo>(
      () => FirebaseMessagingRepoImpl());
}
