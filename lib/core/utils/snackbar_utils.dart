import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled6/main.dart';


class SnackBarUtils {

  /// 일반 스낵바
  static showDefaultSnackBar(
      String message,
      {int seconds = 2}) {
    App.scaffoldMessengerKey.currentState?.showSnackBar(SnackBar(
      duration: Duration(seconds: seconds),
      behavior: SnackBarBehavior.floating,
      backgroundColor: Colors.white,
      content: Text(message, style: TextStyle(color: Colors.black87)),
    ));
  }

  /// 센터 스낵바
  static showCenterSnackBar(
      String message,
      {int seconds = 3}) {
    App.scaffoldMessengerKey.currentState?.showSnackBar(SnackBar(
      duration: Duration(seconds: seconds),
      behavior: SnackBarBehavior.floating,
      backgroundColor: Colors.black54,
      action: SnackBarAction(
        label: 'X',
        textColor: Colors.white,
        onPressed: () {
          App.scaffoldMessengerKey.currentState?.hideCurrentSnackBar();
        },
      ),
      margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 0.4.sh),
      content: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(
            Icons.arrow_circle_left_outlined,
            color: Colors.white,
            size: 16.r,
          ),
          4.horizontalSpace,
          Text(
            message,
            style: TextStyle(color: Colors.white, fontSize: 16.sp, fontWeight: FontWeight.bold),
          ),
          4.horizontalSpace,
          Icon(
            Icons.arrow_circle_right_outlined,
            color: Colors.white,
            size: 16.r,),
        ],
      ),
    ));
  }

  /// BG White 스낵바
  static showPrimarySnackBar(
      BuildContext context,
      String message,
      {int seconds = 2}) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      duration: seconds.seconds,
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      content: Container(
        padding: const EdgeInsets.all(8.0),
        height: 50,
        decoration: BoxDecoration(
          color: Colors.pinkAccent,
          borderRadius: BorderRadius.circular(8).r,
          boxShadow: [
            BoxShadow(
              color:  Colors.grey.withOpacity(0.3),
              spreadRadius: 1,
              blurRadius: 1,
              offset: const Offset(1, 1), // changes position of shadow
            ),
          ],
        ),
        child: Row(
          children: [
            Icon(Icons.check_circle, size: 16.r, color: Colors.white),
            8.horizontalSpace,
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(message, style: TextStyle(color: Colors.white)),
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}