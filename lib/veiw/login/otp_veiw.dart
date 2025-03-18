import 'package:flutter/material.dart';
import 'package:food_delivery_app/common/color_extension.dart';
import 'package:food_delivery_app/common_widget/roundbutton.dart';
// import 'package:food_delivery_app/veiw/login/login_veiw.dart';
import 'package:food_delivery_app/veiw/login/welcome_veiw.dart';
import 'package:otp_pin_field/otp_pin_field.dart';

class OTPVeiw extends StatefulWidget {
  const OTPVeiw({super.key});

  @override
  State<OTPVeiw> createState() => _OTPVeiwState();
}

class _OTPVeiwState extends State<OTPVeiw> {
  final _otpPinFieldController = GlobalKey<OtpPinFieldState>();

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
                "We have sent an OTP \nto your Mobile",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: TColor.primaryText,
                  fontSize: 25,
                  fontWeight: FontWeight.w800,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Please check your mobile number 090******32\ncontinue to reset your password",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: TColor.secondaryText,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 60,
              ),
              SizedBox(
                height: 70,
                child: OtpPinField(
                  key: _otpPinFieldController,

                  ///in case you want to enable autoFill
                  autoFillEnable: false,

                  ///for Ios it is not needed as the SMS autofill is provided by default, but not for Android, that's where this key is useful.
                  textInputAction: TextInputAction.done,

                  ///in case you want to change the action of keyboard
                  /// to clear the Otp pin Controller
                  onSubmit: (newCode) {
                    FocusScope.of(context).requestFocus(FocusNode());

                    /// return the entered pin
                  },
                  onChange: (newCode) {
                    /// return the entered pin
                  },
                  onCodeChanged: (newCode) {},

                  /// to decorate your Otp_Pin_Field
                  otpPinFieldStyle: OtpPinFieldStyle(
                    /// bool to show hints in pin field or not
                    showHintText: false,

                    /// to set the color of hints in pin field or not
                    // hintTextColor: Colors.red,

                    /// To set the text  of hints in pin field
                    // hintText: '1',

                    /// border color for inactive/unfocused Otp_Pin_Field
                    defaultFieldBorderColor: Colors.transparent,

                    /// border color for active/focused Otp_Pin_Field
                    activeFieldBorderColor: Colors.transparent,

                    /// Background Color for inactive/unfocused Otp_Pin_Field
                    defaultFieldBackgroundColor: TColor.textfield,

                    /// Background Color for active/focused Otp_Pin_Field
                    activeFieldBackgroundColor: TColor.textfield,

                    /// Background Color for filled field pin box
                    // filledFieldBackgroundColor: Colors.green,

                    /// border Color for filled field pin box
                    filledFieldBorderColor: Colors.green,
                    //
                    /// gradient border Color for field pin box
                    // activeFieldBorderGradient: LinearGradient(colors: [Colors.black, Colors.redAccent]),
                    // filledFieldBorderGradient: LinearGradient(colors: [Colors.green, Colors.tealAccent]),
                    // defaultFieldBorderGradient: LinearGradient(colors: [Colors.orange, Colors.brown]),
                  ),
                  maxLength: 4,

                  /// no of pin field
                  showCursor: true,

                  /// bool to show cursor in pin field or not
                  cursorColor: TColor.primary,

                  /// to choose cursor color
                  upperChild: const Column(
                    children: [
                      SizedBox(height: 30),
                      Icon(Icons.flutter_dash_outlined, size: 150),
                      SizedBox(height: 20),
                    ],
                  ),

                  ///bool which manage to show custom keyboard
                  showCustomKeyboard: false,

                  /// Widget which help you to show your own custom keyboard in place if default custom keyboard
                  // customKeyboard: Container(),
                  ///bool which manage to show default OS keyboard
                  // showDefaultKeyboard: true,

                  /// to select cursor width
                  cursorWidth: 3,

                  /// place otp pin field according to yourself
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                  /// predefine decorate of pinField use  OtpPinFieldDecoration.defaultPinBoxDecoration||OtpPinFieldDecoration.underlinedPinBoxDecoration||OtpPinFieldDecoration.roundedPinBoxDecoration
                  ///use OtpPinFieldDecoration.custom  (by using this you can make Otp_Pin_Field according to yourself like you can give fieldBorderRadius,fieldBorderWidth and etc things)
                  otpPinFieldDecoration:
                      OtpPinFieldDecoration.defaultPinBoxDecoration,
                ),
              ),
              const SizedBox(
                height: 60,
              ),
              RoundButton(
                  title: "Next",
                  onPressed: () {
                    FocusScope.of(context).requestFocus(FocusNode());
                  }),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const WelcomeVeiw()),
                  );
                },
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Didn't receive the code? ",
                      style: TextStyle(
                        color: TColor.secondaryText,
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      "Click Here",
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
