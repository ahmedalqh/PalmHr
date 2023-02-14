import 'package:flutter/material.dart';
import 'package:palmhr/features_auth/utils/text_utils.dart';
import 'package:palmhr/features_auth/utils/theme.dart';
import 'package:sizer/sizer.dart';

class Container_Under extends StatelessWidget {
  final String text;
  final String typetext;
  final Function() onPressed;
  const Container_Under({this.text, this.typetext, this.onPressed, Key key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextUtils(
              text: text,
              color: labalColor,
              fontWeight: FontWeight.normal,
              fontsize: 10.sp,
              underLine: TextDecoration.none),
          TextButton(
              onPressed: onPressed,
              style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                  minimumSize: Size(12.72.w, 3.52.h),
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  alignment: Alignment.centerLeft),
              child: TextUtils(
                  text: typetext,
                  color: buttonColor,
                  fontWeight: FontWeight.w400,
                  fontsize: 10.sp,
                  underLine: TextDecoration.underline))
        ],
      ),
    );
  }
}
