import 'package:disease_detector_app/config/themes/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OutlineButton extends StatelessWidget {
  const OutlineButton(
      {super.key,
      required this.onPressed,
      required this.title,
      required this.dark});
  final void Function() onPressed;
  final String title;
  final bool dark;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      clipBehavior: Clip.hardEdge,
      onPressed: onPressed,
      child: Text(title,
          style: dark
              ? TextStyle(
                  fontSize: 22.sp,
                  fontWeight: FontWeight.w500,
                  color: AppColor.primary)
              : TextStyle(
                  fontSize: 22.sp,
                  fontWeight: FontWeight.w500,
                  color: AppColor.primary)),
      style: ElevatedButton.styleFrom(
        alignment: Alignment.center,
        overlayColor: AppColor.primary.withOpacity(0.8),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(29.r),
          side: BorderSide(color: AppColor.primary, width: 1.2),
        ),
      ),
    );
  }
}
