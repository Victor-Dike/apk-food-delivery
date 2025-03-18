import 'package:flutter/material.dart';
import 'package:food_delivery_app/common/color_extension.dart';
// import 'package:food_delivery_app/common_widget/round_icon_button.dart';
// import 'package:food_delivery_app/common_widget/round_icon_button1.dart';
import 'package:food_delivery_app/common_widget/roundbutton.dart';
import 'package:food_delivery_app/common_widget/roundtextfield.dart';
import 'package:food_delivery_app/veiw/login/login_veiw.dart';
import 'package:food_delivery_app/veiw/login/otp_veiw.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController txtName = TextEditingController();
  TextEditingController txtMobile = TextEditingController();
  TextEditingController txtAddress = TextEditingController();
  TextEditingController txtEmail = TextEditingController();
  TextEditingController txtPassword = TextEditingController();
  TextEditingController txtConfirmPassword = TextEditingController();

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
                "Sign Up",
                style: TextStyle(
                  color: TColor.primaryText,
                  fontSize: 60,
                  fontWeight: FontWeight.w800,
                ),
              ),
              Text(
                "Add your details to sign up",
                style: TextStyle(
                  color: TColor.secondaryText,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),

              const SizedBox(
                height: 35,
              ),

             RoundTextField(
              hintText: "Name",
              controller: txtName,
             ),

              const SizedBox(
                height: 35,
              ),

             RoundTextField(
              hintText: "Your Email",
              controller: txtEmail,
              keyboardType: TextInputType.emailAddress,
             ),

             const SizedBox(
                height: 35,
              ),

             RoundTextField(
              hintText: "Phone No",
              controller: txtMobile,
              keyboardType: TextInputType.phone,
             ),

             const SizedBox(
                height: 35,
              ),

             RoundTextField(
              hintText: "Address",
              controller: txtAddress,
             ),

             const SizedBox(
                height: 35,
              ),

              RoundTextField(
              hintText: "Password",
              controller: txtPassword,
              obscureText: true,
             ),

             const SizedBox(
                height: 35,
              ),

              RoundTextField(
              hintText: "Confirm Password",
              controller: txtConfirmPassword,
              obscureText: true,
             ),

             const SizedBox(
                height: 35,
              ),

              RoundButton(title: "Sign Up", onPressed: (){
                 Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const OTPVeiw()),
                  );
              }),

              TextButton(onPressed: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const LoginPage()),
                  );
              }, child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Already have an account? ",
                    style: TextStyle(
                      color: TColor.secondaryText,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),

                  Text(
                    "Login",
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
