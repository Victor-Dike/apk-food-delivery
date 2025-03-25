import 'package:flutter/material.dart';
import 'package:food_delivery_app/common/color_extension.dart';

class MostPopularCell extends StatelessWidget {
  final Map m0bj;
  final VoidCallback onTap;
  const MostPopularCell({super.key, required this.m0bj, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      child: InkWell(
        onTap: onTap,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                m0bj["image"].toString(),
                width: 280,
                height: 140,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              m0bj["name"],
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: TColor.primaryText,
                  fontSize: 18,
                  fontWeight: FontWeight.w700),
            ),

            const SizedBox(
              height: 4,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  m0bj["type"],
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: TColor.secondaryText,
                      fontSize: 12,
                      ),
                ),

                Text(
                  " . ",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: TColor.primary,
                      fontSize: 12,
                      ),
                ),

                Text(
                  m0bj["location"],
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: TColor.secondaryText,
                      fontSize: 12,
                      ),
                ),

                const SizedBox(
                  width: 8,
                ),

                  Image.asset(
                  "assets/images/rate.png",
                  width: 10,
                  height: 10,
                  fit: BoxFit.cover,
                ),

                Text(
                  m0bj["rate"],
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: TColor.primary,
                      fontSize: 12,
                      ),
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }
}
