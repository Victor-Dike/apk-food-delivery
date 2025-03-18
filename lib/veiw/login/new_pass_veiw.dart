import 'package:flutter/material.dart';
import 'package:food_delivery_app/common/color_extension.dart';
import 'package:food_delivery_app/common_widget/roundbutton.dart';
import 'package:food_delivery_app/common_widget/roundtextfield.dart';
import 'package:food_delivery_app/veiw/login/login_veiw.dart';

class NewPassVeiw extends StatefulWidget {
  const NewPassVeiw({super.key});

  @override
  State<NewPassVeiw> createState() => _NewPassVeiwState();
}

class _NewPassVeiwState extends State<NewPassVeiw> {
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
                "New Password",
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
                  "Please enter your new password",
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
              hintText: "New Password",
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

              RoundButton(title: "Next", onPressed: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const LoginPage()),
                  );
              }),
            ],
          ),
        ),
      ),
    );
  }
}
