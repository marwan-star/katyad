import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:reminder_app/core/theme/app_colors.dart';

class CustomSvgIcon extends StatelessWidget {
  final String icon;
  final double width;
  final double height;
  final void Function() onTap;
  final Color color;
  const CustomSvgIcon({
    super.key,
    required this.icon,
    required this.onTap,
    this.width = 30,
    this.height = 30,
    this.color = AppColors.black,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SvgPicture.asset(
        icon,
        width: width,
        height: height,
        colorFilter: ColorFilter.mode(color, BlendMode.srcIn),
      ),
    );
  }
}
