import 'package:firebase_auth/firebase_auth.dart';
import 'package:news/auth/model/user_model.dart';

class AuthController {
  void onRegister(UserModel userModel) async {
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
              email: userModel.username, password: userModel.password!);
      print("------------${userCredential.user}");
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
  }
}
