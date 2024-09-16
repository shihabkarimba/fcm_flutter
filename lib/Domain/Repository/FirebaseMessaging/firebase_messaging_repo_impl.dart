import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fcm_flutter/Domain/Repository/FirebaseMessaging/firebase_messaging_repo.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:get_it/get_it.dart';

import '../../../Core/Constants/database_constants.dart';

class FirebaseMessagingRepoImpl implements FirebaseMessagingRepo {
  final _firebaseMessaging = GetIt.I<FirebaseMessaging>();
  final _firebaseAuth = GetIt.I<FirebaseAuth>();
  final _firestore = GetIt.I<FirebaseFirestore>();

  @override
  Future<void> requestFcmPermission() async {
    try {
      _firebaseMessaging.requestPermission(
        alert: true,
        announcement: true,
        badge: true,
        carPlay: false,
        criticalAlert: false,
        provisional: false,
        sound: true,
      );
    } catch (e) {
      log(e.toString());
      return;
    }
  }

  @override
  Future<void> updateFcmDetails(String uid) async {
    try {
      final token = await _firebaseMessaging.getToken();
      if (token != null) {
        _firestore.collection(DataBaseConstants.users).doc(uid).update({
          DataBaseConstants.fcmToken: token,
        });
      }
    } catch (e) {
      log(e.toString());
      return;
    }
  }
}
