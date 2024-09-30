import 'package:app/navigation/navigation.dart';
import 'package:app/widgets/input.dart';
import 'package:app/widgets/ui.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

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
      child:ListView(
        children: [
          customInput(controller: email,hintTxt: 'user@email.com'),
          customInput(controller: password, hintTxt: 'password',isPassword: true),
          customBtn(title: 'Login',onClick: login ,height: height * 0.1,minWidth: width ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 2),
            child: Align(
              alignment: Alignment.centerRight,
              child:   customTextBtn(title: "Don't have an account?signup", onCLick: signup),
            ),
          ),
        ].map((widget)=> Padding(
            padding:const EdgeInsets.fromLTRB(0, 0, 0, 6),
          child: widget,
        )).toList(),

      )
    );
  }

  void login()=>router.go('/products');
  void signup()=>router.go('/signup');

}
