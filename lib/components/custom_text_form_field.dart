import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  String label;

  bool isPassword;

  TextInputType keyboardType;

  TextEditingController controller;

  String? Function(String?) myValidator;

  CustomTextFormField(
      {required this.label,
      this.isPassword = false,
      this.keyboardType = TextInputType.text,
      required this.controller,
      required this.myValidator});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        decoration: InputDecoration(
          label: Text(label),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide:
                  BorderSide(width: 3, color: Theme.of(context).primaryColor)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide:
                  BorderSide(width: 3, color: Theme.of(context).primaryColor)),
        ),
        obscureText: isPassword,
        keyboardType: keyboardType,
        controller: controller,
        validator: myValidator,
      ),
    );
  }
}
