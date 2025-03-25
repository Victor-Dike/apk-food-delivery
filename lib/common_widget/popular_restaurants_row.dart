import 'package:flutter/material.dart';
import 'package:food_delivery_app/common/color_extension.dart';

class PopularRestaurantsRow extends StatelessWidget {
  final Map p0bj;
  final VoidCallback onTap;
  const PopularRestaurantsRow({super.key, required this.p0bj, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: InkWell(
        onTap: onTap,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
                p0bj["image"].toString(),
                width: double.maxFinite,
                height: 200,
                fit: BoxFit.cover,
              ),

            const SizedBox(
              width: 8,
              height: 12,
            ),
              
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      p0bj["name"],
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: TColor.primaryText,
                          fontSize: 18,
                          fontWeight: FontWeight.w700),
                    ),
                    
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [

                        Image.asset(
                          "assets/images/rate.png",
                          width: 10,
                          height: 10,
                          fit: BoxFit.cover,
                        ),

                        const SizedBox(
                          width: 4,
                        ),

                        Text(
                          p0bj["rate"],
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: TColor.primary,
                              fontSize: 12,
                              ),
                        ),
                
                        const SizedBox(
                          width: 8,
                        ),
                
                        Text(
                          "(${p0bj["rating"]} Ratings)",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: TColor.secondaryText,
                              fontSize: 12,
                              ),
                        ),


                        Text(
                          p0bj["type"],
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
                          p0bj["location"],
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: TColor.secondaryText,
                              fontSize: 12,
                              ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}
