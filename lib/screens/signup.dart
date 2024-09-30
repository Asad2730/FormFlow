import 'package:app/navigation/navigation.dart';
import 'package:app/widgets/input.dart';
import 'package:app/widgets/ui.dart';
import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {

  final email = TextEditingController();
  final password = TextEditingController();

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: myAppBar(),
      body: SizedBox(
        height: height ,
        width: width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            logo(height: height * 0.1, width: width * 0.8),
            authForm(height: height *0.6, width: width*0.8,)
          ],
        ),
      ),
    );
  }

  Widget authForm({required double height,required double width}){
    return SizedBox(
      height: height ,
      width: width ,
      child: ListView(
        children: [
          customInput(controller: email,hintTxt: 'user@email.com'),
          customInput(controller: password, hintTxt: 'password',isPassword: true),
          customBtn(title: 'Signup',onClick: signUp, height:height*0.1,minWidth:width),
        ].map((widget)=>Padding(
            padding:const EdgeInsets.fromLTRB(0, 0,0, 6),
            child: widget,
        )).toList(),
      ),
    );
  }

  void signUp()=>router.go('/');

}
