import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:projectiseeff/database/UsersDao.dart';
import 'package:projectiseeff/database/model/Patients.dart';

class PatientsDao{
  static CollectionReference<Patients> getPatientsCollections(String uid){
   return UsersDao.getUsersCollection()
        .doc(uid).collection(Patients.collectionName)
        .withConverter(fromFirestore: (snapshot, options) => Patients.fromFirestore(snapshot.data()),
        toFirestore: (value, options) => value.toFirestore() );
  }
  static Future<void> addPatient(Patients patients,String uid){
  var docRef =  getPatientsCollections(uid).doc();
  patients.id = docRef.id;
 return docRef.set(patients);
  }
}