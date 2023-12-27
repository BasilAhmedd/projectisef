import 'dart:ffi';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:projectiseeff/database/model/User.dart';

class UsersDao{
 static CollectionReference<User> getUsersCollection(){

      var db = FirebaseFirestore.instance;
      var usersCollection = db.collection(User.collectionName)
          .withConverter(fromFirestore: (snapshot, options) => User.fromFireStore(snapshot.data()),
          toFirestore: (object, options) => object.toFireStore());
      return usersCollection;


  }
     static Future<void> createUser(User user){
        var usersCollections = getUsersCollection();
        var doc = usersCollections.doc(user.id);
        return doc.set(user);
     }

  static Future<User?> getUser(String uid) async{
    var doc = getUsersCollection().doc(uid);
    var docSnapshot = await doc.get();
    return docSnapshot.data();
  }


  }