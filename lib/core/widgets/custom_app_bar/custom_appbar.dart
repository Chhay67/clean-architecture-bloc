import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../resource/app_color.dart';
import '../../resource/app_text.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget{
  const MyAppBar({
    super.key,
    this.backgroundColor,
    this.elevation = 0,
    this.centerTitle = false,
    this.leadingWidth = 40,
    this.bottom,
    this.leading,
    this.showLeading = false,
    this.iconColor,
    this.onPressed,
    this.title = '',
    this.titleWidget,
    this.action, this.toolbarHeight,
  });
  final Color? backgroundColor;
  final double? elevation;
  final bool centerTitle;
  final double leadingWidth;
  final PreferredSizeWidget? bottom;
  final Widget? leading;
  final bool showLeading;
  final Color? iconColor;
  final Function()? onPressed;
  final String? title;
  final Widget? titleWidget;
  final List<Widget>? action;
  final double? toolbarHeight;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      titleSpacing: 0,
      backgroundColor: backgroundColor ?? Colors.transparent,
      elevation: elevation ?? 0,
      automaticallyImplyLeading: true,
      toolbarHeight: kToolbarHeight.h,
      centerTitle: centerTitle,
      leadingWidth: leadingWidth.w,
      bottom: bottom,
      surfaceTintColor: Colors.transparent,
      leading: leading ??
          Builder(
            builder: (context) {
              if (showLeading == true) {
                return IconButton(
                  padding: const EdgeInsets.only(left: 8).w,
                  splashRadius: 24.h,
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: iconColor ?? Colors.white,
                  ),
                  onPressed: onPressed ??
                          () {
                        Navigator.of(context).pop(true);
                      },
                );
              } else {
                return const SizedBox();
              }
            },
          ),
      actions: action ?? [],
      title: titleWidget ?? AppText.large(title!, color: AppColors.white),
    );

  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size(double.maxFinite, toolbarHeight ?? kToolbarHeight.h);
}