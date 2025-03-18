import 'package:flutter/material.dart';
import 'package:food_delivery_app/common/color_extension.dart';
import 'package:food_delivery_app/common_widget/round_icon_button.dart';
import 'package:food_delivery_app/common_widget/round_icon_button1.dart';
import 'package:food_delivery_app/common_widget/roundbutton.dart';
import 'package:food_delivery_app/common_widget/roundtextfield.dart';
import 'package:food_delivery_app/veiw/login/reset_password_page.dart';
import 'package:food_delivery_app/veiw/login/sign_up_page.dart';
import 'package:food_delivery_app/veiw/on_boarding/onboarding_veiw.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController txtEmail = TextEditingController();
  TextEditingController txtPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // var media = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: TColor.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 20,
            horizontal: 25,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 84,
              ),
              Text(
                "Login",
                style: TextStyle(
                  color: TColor.primaryText,
                  fontSize: 60,
                  fontWeight: FontWeight.w800,
                ),
              ),
              Text(
                "Add your details to login",
                style: TextStyle(
                  color: TColor.secondaryText,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 30,
              ),

              RoundTextField(
                hintText: "Your Email",
                controller: txtEmail,
                keyboardType: TextInputType.emailAddress,
              ),

              const SizedBox(
                height: 20,
              ),

              RoundTextField(
                hintText: "Password",
                controller: txtPassword,
                obscureText: true,
              ),

              const SizedBox(
                height: 30,
              ),

              RoundButton(title: "Login", onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const OnBoardingVeiw()),
                  );
              }),
              const SizedBox(
                height: 4,
              ),

              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const ResetPasswordPage()),
                  );
                },
                child: Text(
                  "Forgot your password?",
                  style: TextStyle(
                    color: TColor.secondaryText,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),

              const SizedBox(
                height: 50,
              ),

              Text(
                "or Login With",
                style: TextStyle(
                  color: TColor.secondaryText,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),

              const SizedBox(
                height: 50,
              ),

              // Login in with Facebook
              RoundIconButton(
                title: "Login with Facebook",
                icon: "assets/images/Facebook.png",
                color: const Color(0xff367FC0),
                onPressed: () {},
              ),

              const SizedBox(
                height: 30,
              ),

              // Login in with Google
              RoundIconButton1(
                title: "Login with Google",
                icon: "assets/images/google_plus_logo.png",
                color: const Color(0xffDD4B39),
                onPressed: () {},
              ),

              const SizedBox(
                height: 70,
              ),

              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SignUpPage()),
                  );
                },
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Don't have an account? ",
                      style: TextStyle(
                        color: TColor.secondaryText,
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      "Sign up",
                      style: TextStyle(
                        color: TColor.primary,
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
