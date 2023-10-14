import 'package:another_flushbar/flushbar.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter/material.dart';

class Utils {
  static toastMessage(String message) {
    Fluttertoast.showToast(
      msg: message,
      backgroundColor: Colors.white,
      textColor: Colors.red,
    );
  }

  static void flushBarErrorMessage(String message, BuildContext context) {
    Flushbar(
      message: message,
      backgroundColor: Colors.red,
      forwardAnimationCurve: Curves.decelerate,
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      reverseAnimationCurve: Curves.easeInOut,
      duration: Duration(seconds: 3),
      flushbarPosition: FlushbarPosition.TOP,
      positionOffset: 20,
      icon: Icon(Icons.error, size: 30, color: Colors.green),
    )..show(context);
  }

  static snackBar(String message, BuildContext context) {
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: Colors.black,
        content: Text(message),
      ),
    );
  }
}
