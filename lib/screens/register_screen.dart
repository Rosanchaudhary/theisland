import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:the_island/constants/color_constants.dart';
import 'package:the_island/screens/location_screen.dart';
import 'package:the_island/widgets/auth_button.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back,
              color: ColorConstants.primaryColor,
            )),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12),
        child: ListView(
          children: [
            Center(
              child: Text(
                "REGISTER",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 45,
                    color: ColorConstants.primaryColor),
              ),
            ),
            Center(
              child: Text(
                "Already have an account? sign in",
                style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 19,
                    color: ColorConstants.primaryColor),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "FULL NAME",
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 22,
                  color: ColorConstants.primaryColor),
            ),
            const TextField(
              decoration: InputDecoration(
                  border:
                      UnderlineInputBorder(borderSide: BorderSide(width: 8))),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "EMAIL",
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 22,
                  color: ColorConstants.primaryColor),
            ),
            const TextField(
              decoration: InputDecoration(
                  border:
                      UnderlineInputBorder(borderSide: BorderSide(width: 8))),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "PASSWORD",
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 22,
                  color: ColorConstants.primaryColor),
            ),
            const TextField(
              decoration: InputDecoration(
                  border:
                      UnderlineInputBorder(borderSide: BorderSide(width: 8))),
            ),
            const SizedBox(
              height: 140,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SelectLocationScreen()));
              },
              child: AuthButton(
                size: size,
                text: "REGISTER",
                color: const Color.fromRGBO(239, 239, 239, 1),
                textColor: ColorConstants.primaryColor,
              ),
            )
          ],
        ),
      ),
    );
  }
}
