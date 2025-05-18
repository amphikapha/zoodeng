import 'models/models.dart';

abstract class UserRepository {
  // Fetches the current user. Check the authentication state
  Stream<MyUser?> get user;

  Future<MyUser> signUp(MyUser myUser, String password);

  Future<void> setUserData(MyUser user);

  Future<void> signIn(String email, String password);

  Future<void> logOut();
}
