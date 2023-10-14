import 'package:flutter/material.dart';
import 'package:model_view_viewmodel/view_d/home_screen.dart';
class Login_Screen extends StatefulWidget {
  const Login_Screen({super.key});

  @override
  State<Login_Screen> createState() => _Login_ScreenState();
}

class _Login_ScreenState extends State<Login_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:InkWell(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>Home_Screen()));

        },

          child: Center(child: Text("click")))

    );
  }
}
