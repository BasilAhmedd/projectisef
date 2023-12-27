import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:projectiseeff/database/model/User.dart' as MyUser;
import 'package:projectiseeff/database/UsersDao.dart';
import 'package:provider/provider.dart';

class AuthProviderr extends ChangeNotifier{
  User? fireBaseAuthUser;
  MyUser.User? databaseUser;

  Future<void> register(String email ,String password ,String FullName , String UserName)
  async{
    var result  = await FirebaseAuth.instance.
    createUserWithEmailAndPassword
      (email: email, password: password);
    await UsersDao.createUser(
        MyUser.User(
            id: result.user?.uid,
            Email: email,
            FullName: FullName,
            UserName: UserName
        )
    );
  }

 Future<void> login(String email , String Password)async{
    final result = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: Password
    );
    var user = await UsersDao.getUser(result.user!.uid);
    databaseUser = user;
    fireBaseAuthUser = result.user;
  }

  void logout() {
    databaseUser = null ;
    FirebaseAuth.instance.signOut();
  }

  bool isUserLoggedInBefore() {

    return FirebaseAuth.instance.currentUser!=null;
  }

  Future<void> retreiveUserFromDataBase() async {
    fireBaseAuthUser = FirebaseAuth.instance.currentUser;
    databaseUser =  await UsersDao.getUser(fireBaseAuthUser!.uid);
  }


}