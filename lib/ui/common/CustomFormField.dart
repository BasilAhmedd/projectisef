import 'package:flutter/material.dart';

typedef Validator = String? Function(String?);
class CustomFormField extends StatefulWidget {
  String hint;
  TextInputType keyboardType;
  bool securetext;
  Validator? validator;
  TextEditingController controller;
   CustomFormField({required this.hint ,
     required this.controller,
     this.keyboardType = TextInputType.text,
     this.securetext = false ,
     this.validator
   });

  @override
  State<CustomFormField> createState() => _CustomFormFieldState();
}

class _CustomFormFieldState extends State<CustomFormField> {
  bool isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: widget.validator,
      controller: widget.controller,
      obscureText: widget.securetext && !isPasswordVisible,
      keyboardType: widget.keyboardType,
      decoration: InputDecoration(
        labelText: widget.hint,
        suffixIcon: widget.securetext
            ? GestureDetector(
          onTap: () {
            setState(() {
              isPasswordVisible = !isPasswordVisible;
            });
          },
          child: Icon(
            isPasswordVisible ? Icons.visibility : Icons.visibility_off,
          ),
        )
            : null,
      ),
      );
  }
}
