class User{
  static const String collectionName = "users";
  String? id;
  String? FullName;
  String? UserName;
  String? Email;
  User({this.id,this.Email,this.FullName,this.UserName});

  User.fromFireStore(Map<String,dynamic>? data) : this (
    id : data?['id'],
    FullName : data?['fullName'],
    UserName : data?['userName'],
    Email : data?['email'],
  );
  Map <String , dynamic> toFireStore(){
    return{
      'id':id,
      'email':Email,
      'userName':UserName,
      'fullName':FullName
    };
  }

}