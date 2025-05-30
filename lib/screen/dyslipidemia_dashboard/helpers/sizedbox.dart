import 'package:dyslipidemia_dashboard/screen/dyslipidemia_dashboard/helpers/size_extension.dart';
import 'package:flutter/material.dart';

Widget sizedBoxWithHeight(int? height) {
  return SizedBox(
    height: height!.h,
  );
}

Widget sizedBoxWithWidth(int? width) {
  return SizedBox(
    width: width!.w,
  );
}
