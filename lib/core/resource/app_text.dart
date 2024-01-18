import 'package:flutter/material.dart';
import 'app_color.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class AppText extends Text {
  final Color? color;
  final FontWeight fontWeight;
  final double fontSize;
  final TextOverflow? textOverflow;
  final int? maxLine;
  final TextAlign? align;
  AppText.title(String data,
      {super.key,
      this.color = AppColors.black,
      this.fontWeight = FontWeight.w900,
      this.fontSize = 18,
      this.maxLine,
      this.textOverflow,
      this.align})
      : super(data,
            textAlign: align ?? TextAlign.center,
            maxLines: maxLine,
            overflow: textOverflow,
            style: TextStyle(
                color: color,
                fontWeight: fontWeight,
                fontSize: fontSize.sp,
                overflow: textOverflow));
  AppText.large(String data,
      {super.key,
      this.maxLine,
      this.textOverflow,
      this.color = AppColors.primary,
      this.fontWeight = FontWeight.w600,
      this.fontSize = 16,
      this.align})
      : super(data,
            textAlign: align ?? TextAlign.center,
            maxLines: maxLine,
            overflow: textOverflow,
            style: TextStyle(
                color: color,
                fontWeight: fontWeight,
                fontSize: fontSize.sp,
                overflow: textOverflow));
  AppText.medium(String data,
      {super.key,
      this.color = AppColors.primary,
      this.fontWeight = FontWeight.bold,
      this.fontSize = 14,
      this.maxLine,
      this.textOverflow,
      this.align})
      : super(data,
            textAlign: align ?? TextAlign.left,
            maxLines: maxLine,
            overflow: textOverflow,
            style: TextStyle(
                color: color,
                fontWeight: fontWeight,
                fontSize: fontSize.sp,
                overflow: textOverflow));
  AppText.small(String data,
      {super.key,
      this.color = AppColors.subText,
      this.fontWeight = FontWeight.normal,
      this.maxLine,
      this.fontSize = 12,
      this.textOverflow,
      this.align})
      : super(data,
            textAlign: align ?? TextAlign.left,
            maxLines: maxLine,
            overflow: textOverflow,
            style: TextStyle(
                color: color,
                fontWeight: fontWeight,
                fontSize: fontSize.sp,
                overflow: textOverflow));
}
