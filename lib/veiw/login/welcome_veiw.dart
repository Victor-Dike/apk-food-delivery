import 'package:flutter/material.dart';
import 'package:food_delivery_app/common/color_extension.dart';
import 'package:food_delivery_app/common_widget/roundbutton.dart';
import 'package:food_delivery_app/veiw/login/login_veiw.dart';
import 'package:food_delivery_app/veiw/login/sign_up_page.dart';

class WelcomeVeiw extends StatefulWidget {
  const WelcomeVeiw({super.key});

  @override
  State<WelcomeVeiw> createState() => _WelcomeVeiwState();
}

class _WelcomeVeiwState extends State<WelcomeVeiw> {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: TColor.white,
      body: Center(
        child: Column(
          children: [
            Stack(
              alignment: Alignment.topCenter,
              children: [
                Image.asset(
                  "assets/images/yellowbg3.png",
                  // alignment: Alignment(0, 0.8),
                  width: media.width,
                  height: media.height * 0.5,
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  alignment: Alignment(0, 1.4),
                  "assets/images/app_logo1.png",
                  width: media.width * 0.58,
                  height: media.height * 0.58,
                  fit: BoxFit.contain,
                ),
              ],
            ),
            SizedBox(
              height: media.width * 0.2,
            ),
            Text(
              "Discover the best foods from over 1,000\nrestaurants and fast delivery to your\ndoorstep",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: TColor.secondaryText,
                  fontSize: 13,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: media.width * 0.1,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: RoundButton(
                title: "Login",
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginPage(),
                        ),
                      );
                },
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: RoundButton(
                title: "Create an Account",
                type: RoundbuttonType.textPrimary,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SignUpPage()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
