import 'package:flutter/material.dart';
import 'package:food_delivery_app/common/color_extension.dart';
// import 'package:food_delivery_app/common_widget/round_icon_button.dart';
// import 'package:food_delivery_app/common_widget/round_icon_button1.dart';
import 'package:food_delivery_app/common_widget/roundbutton.dart';
import 'package:food_delivery_app/common_widget/roundtextfield.dart';
import 'package:food_delivery_app/veiw/login/login_veiw.dart';
import 'package:food_delivery_app/veiw/login/new_pass_veiw.dart';

class ResetPasswordPage extends StatefulWidget {
  const ResetPasswordPage ({super.key});

  @override
  State<ResetPasswordPage> createState() => _ResetPasswordPageState();
}

class _ResetPasswordPageState extends State<ResetPasswordPage> {
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
            vertical: 25,
            horizontal: 25,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 84,
              ),
              Text(
                "Reset Password",
                style: TextStyle(
                  color: TColor.primaryText,
                  fontSize: 40,
                  fontWeight: FontWeight.w800,
                ),
              ),
              
              const SizedBox(
                height: 20,
              ),

              Text(
                  "Please enter your email to receive a link\nto create a new password via email",
                  textAlign: TextAlign.center,
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
              hintText: "Your Email",
              controller: txtEmail,
              keyboardType: TextInputType.emailAddress,
             ),

             const SizedBox(
                height: 35,
              ),

              RoundButton(title: "Send", onPressed: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const NewPassVeiw()),
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
