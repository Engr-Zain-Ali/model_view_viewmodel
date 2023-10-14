import 'package:flutter/material.dart';
import 'package:model_view_viewmodel/view_d/home_screen.dart';

import '../utils/utils.dart';
class Login_Screen extends StatefulWidget {
  const Login_Screen({super.key});

  @override
  State<Login_Screen> createState() => _Login_ScreenState();
}

class _Login_ScreenState extends State<Login_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: InkWell(
          onTap: (){
            Utils.snackBar("no internet connection",context);
            //Utils.toastMessage('click me');
          },

            child: Center(child: Text("click"))),
      ),

    );
  }
}
