import 'package:flutter/material.dart';
import 'package:model_view_viewmodel/utils/routes/routes_name.dart';
import 'package:model_view_viewmodel/view_d/home_screen.dart';
import 'package:model_view_viewmodel/view_d/login_screen.dart';

class Routes{
  static MaterialPageRoute generatRoute(RouteSettings settings){
    switch(settings.name){
      case RoutesName.home:
      return MaterialPageRoute(builder: (BuildContext context)=>Home_Screen());
      case RoutesName.login:
        return MaterialPageRoute(builder: (BuildContext context)=>Login_Screen());
      default:
      return MaterialPageRoute(builder: (_){
        return Scaffold(
          body: Center(
            child: Text("NO route round"),
          ),
        );
      });


    }
  }
}