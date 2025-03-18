import 'package:flutter/material.dart';
import 'package:food_delivery_app/veiw/login/welcome_veiw.dart';

class StartupVeiw extends StatefulWidget {
  const StartupVeiw({super.key});

  @override
  State<StartupVeiw> createState() => _StartupVeiwState();
}

class _StartupVeiwState extends State<StartupVeiw> {
  @override
  void initState() {
    super.initState();
    goWelcomePage();
  }

  void goWelcomePage() async {
    await Future.delayed(const Duration(seconds: 5));
    welcomePage();
  }

  void welcomePage() {
    Navigator.push(
        context, 
        MaterialPageRoute(builder: (context) => const WelcomeVeiw()),
        );
  }

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        alignment: Alignment(0, 0),
        children: [
          Image.asset(
            "assets/images/splash_screen.png",
            width: media.width,
            height: media.height,
            fit: BoxFit.cover,
          ),

          Image.asset(
            "assets/images/app_logo1.png",
            width: media.width * 0.58,
            height: media.height * 0.58,
            fit: BoxFit.contain,
          ),
        ],
      ),
    );
  }
}
