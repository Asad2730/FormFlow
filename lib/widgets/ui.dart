import 'package:flutter/material.dart';

AppBar myAppBar() {
 return AppBar(backgroundColor: Colors.black);
}

Widget logo({required double height,required double width}){
  return SizedBox(
    height: height,
    width: width ,
    child: const Text('Form Flow'
      ,style:
      TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w900,
        fontSize: 28
      ),
      textAlign: TextAlign.center,
    ),
  );
}

Widget customTextBtn({required String title,required Function() onCLick}){
  return GestureDetector(
    onTap: onCLick,
     child: Text(
       title,
       style:const TextStyle(
         color: Colors.lightBlueAccent,
         fontSize: 15,
         fontWeight: FontWeight.w400,
       ),
     ),

  );
}


Widget customBtn({required String title,double? height,double? minWidth,required Function() onClick}){
  return MaterialButton(
    onPressed: onClick,
    height: height,
    minWidth: minWidth,
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0)
    ),
    color: Colors.black,
    child:  Text(title,
      style: const TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.w600
      ),
    ),
  );
}