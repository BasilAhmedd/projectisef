class Patients {
  static const String collectionName = "Patients";
  String? id;
  String? FullName;
  String? Age;
  String? Governorate;
  String? Address;
  String? PhoneNumber;

  Patients(
      {this.id,
      this.FullName,
      this.Age,
      this.Governorate,
      this.Address,
      this.PhoneNumber});

  Patients.fromFirestore(Map<String,dynamic>? data):
      this(
          id: data?['id'],
          FullName: data?['FullName'],
          Age: data?['Age'],
          Governorate: data?['Governorate'],
          Address: data?['Address'],
          PhoneNumber: data?['PhoneNumber'],

      );

  Map<String,dynamic> toFirestore(){
    return{
      'id' : id,
      'FullName' : FullName,
      'Age' : Age,
      'Governorate' : Governorate,
      'Address' : Address,
      'PhoneNumber' : PhoneNumber,
    };
  }
}
