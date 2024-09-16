abstract class FirebaseMessagingRepo {
  ///request for fcm permission
  Future<void> requestFcmPermission();

  ///update fcm in user Docs
  Future<void> updateFcmDetails(String uid);
}
