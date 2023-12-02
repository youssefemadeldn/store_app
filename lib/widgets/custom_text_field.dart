import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField(
      {super.key, this.hintText, this.onChanged, this.obscure = false});

  String? hintText;
  Function(String)? onChanged;
  bool? obscure;

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscure!,
      // validator: (data) {
      //   if (data!.isEmpty) {
      //     return 'Field is Required';
      //   }
      // },
      // style: const TextStyle(color: Colors.grey),
      onChanged: onChanged,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(
            // color: Colors.grey,
            ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(
            color: Colors.black,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(
            color: Colors.black,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
