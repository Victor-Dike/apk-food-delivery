import 'package:flutter/material.dart';
import 'package:food_delivery_app/common/color_extension.dart';

enum RoundbuttonType { bgPrimary, textPrimary }

class RoundButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String title;
  final RoundbuttonType type;
  const RoundButton(
    {super.key, 
    required this.title, 
    required this.onPressed, 
    this.type = RoundbuttonType.bgPrimary});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: 56,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          border: type == RoundbuttonType.bgPrimary ? 
          null : Border.all(color: TColor.primary, width: 2),
          color: 
          type == RoundbuttonType.bgPrimary ? 
          TColor.primary : TColor.white,
          borderRadius: BorderRadius.circular(28),
        ),
        child: Text(
          title,
          style: TextStyle(
              color: 
              type == RoundbuttonType.bgPrimary ? 
              TColor.white : TColor.primary, 
              fontSize: 16, 
              fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
