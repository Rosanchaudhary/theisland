import 'package:flutter/material.dart';
import 'package:the_island/constants/color_constants.dart';
import 'package:the_island/screens/register_screen.dart';
import 'package:the_island/screens/signin_screen.dart';
import 'package:the_island/widgets/auth_button.dart';

class CoverScreen extends StatelessWidget {
  const CoverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        body: Container(
      height: size.height,
      width: size.width,
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/background.png'),
              fit: BoxFit.cover,
              scale: 2.5)),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 40),
        child: Column(
          children: [
            const SizedBox(
              height: 100,
            ),
            Image.asset(
              "assets/logo_1.png",
            ),
            const SizedBox(
              height: 120,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SiginInScreen()));
              },
              child: AuthButton(
                size: size,
                text: "SIGN IN",
                color: ColorConstants.primaryColor,
                textColor: ColorConstants.secondryColor,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RegisterScreen()));
              },
              child: AuthButton(
                size: size,
                text: "REGISTER",
                color: Colors.white,
                textColor: ColorConstants.primaryColor,
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
