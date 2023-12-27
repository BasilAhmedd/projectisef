import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:projectiseeff/database/PatientsDao.dart';
import 'package:projectiseeff/database/model/Patients.dart';
import 'package:projectiseeff/provider/authProvider.dart';
import 'package:projectiseeff/ui/DialogUtils.dart';
import 'package:projectiseeff/ui/common/CustomFormField.dart';
import 'package:projectiseeff/ui/firebaseErrorCodes.dart';
import 'package:projectiseeff/ui/login/LoginScreen.dart';
import 'package:provider/provider.dart';

class PatientData extends StatefulWidget {
  static const String routeName = "PatientData";
  const PatientData({super.key});

  @override
  State<PatientData> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<PatientData> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController Age = TextEditingController();
  final TextEditingController Governorate = TextEditingController();
  final TextEditingController Address = TextEditingController();
  final TextEditingController PhoneNumber = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFFF2DEF2),
        ),
        backgroundColor: Color(0xFFF2DEF2),
        body: Container(
          padding: EdgeInsets.all(12),
          child: Form(
            key: formKey,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Stack(alignment: Alignment.center, children: [
                    Image.asset(
                      "assets/rectangle-5.png",
                      width: 200,
                    ),
                    Text(
                      "Patient Data",
                      style: TextStyle(
                          fontSize: 30, fontWeight: FontWeight.bold),
                    )
                  ]),
                  CustomFormField(
                      hint: "Full Name",
                      keyboardType: TextInputType.name,
                      controller: nameController,
                      validator: (text) {
                        if (text == null || text
                            .trim()
                            .isEmpty) {
                          return 'Please enter a Name';
                        }
                      }),

                  CustomFormField(
                      hint: "Age",
                      keyboardType: TextInputType.number,
                      controller: Age,
                      validator: (text) {
                        if (text == null || text
                            .trim()
                            .isEmpty) {
                          return 'Please enter Age';
                        }
                      }),
                  CustomFormField(
                      hint: "Governorate",
                      keyboardType: TextInputType.text,
                      controller: Governorate,
                      validator: (text) {
                        if (text == null || text
                            .trim()
                            .isEmpty) {
                          return 'Please enter a Governorate';
                        }

                      }
                  ),
                  CustomFormField(
                      hint: "Address",
                      keyboardType: TextInputType.streetAddress,
                      controller: Address,

                      validator: (text) {
                        if (text == null || text
                            .trim()
                            .isEmpty) {
                          return 'Please enter an address';
                        }
                      }
                  ),
                  CustomFormField(
                      hint: "Phone Number",
                      keyboardType: TextInputType.phone,
                      controller: PhoneNumber,

                      validator: (text) {
                        if (text == null || text
                            .trim()
                            .isEmpty) {
                          return 'Please enter a Number';
                        }
                      }
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Color(0xFF2A57FD))
                      ),
                      onPressed: () {
                        addPatient();
                      },
                      child: Text(
                        "Add Patient", style: TextStyle(color: Colors.white),)),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
    void addPatient() async {
    var authProvider = Provider.of<AuthProviderr>(context,listen: false);
      if(formKey.currentState?.validate() == false){
        return ;
        
      }
      Patients patients = Patients(
          FullName: nameController.text,
              Age: Age.text ,
        Governorate: Governorate.text,
        Address: Address.text,
        PhoneNumber : PhoneNumber.text
      );
      DialogUtils.showLoading(context, "Adding a Patient ... Please Wait ....");
     await PatientsDao.addPatient(patients, authProvider.databaseUser!.id!);
     DialogUtils.HideDialog(context);
     DialogUtils.showMessage(context,"Patient Added Successfully",
      posActionName: "Ok",
  posAction: (){
       Navigator.pop(context);
  }
     );
  }

}


