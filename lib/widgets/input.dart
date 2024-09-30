import 'package:flutter/material.dart';

Widget customInput({required TextEditingController controller,
  required String hintTxt,bool? isPassword}){
  return TextFormField(
    decoration: InputDecoration(
      hintText: hintTxt,
      contentPadding: const EdgeInsets.all(10),
      border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0)
      ),
    ),
    controller: controller,
    validator: (value){
      if(value!.isEmpty){
        return 'please enter email';
      }
      return null;
    },
    obscureText:isPassword??false ,
  );
}

