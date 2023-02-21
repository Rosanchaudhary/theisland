import 'package:flutter/material.dart';
import 'package:the_island/constants/color_constants.dart';
import 'package:the_island/screens/home_screen.dart';
import 'package:the_island/widgets/auth_button.dart';
import 'package:the_island/widgets/location_card.dart';

class SelectLocationScreen extends StatelessWidget {
  const SelectLocationScreen({super.key});

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
                "SELECT YOUR PREFERRED LOCATION",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    color: ColorConstants.primaryColor),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            LocationCard(
                isSelected: true,
                size: size,
                title: "ULUWATA",
                desc: "Padel courts available. "),
            LocationCard(
                isSelected: false,
                size: size,
                title: "CHANGUU-COMMING SOON",
                desc: "Padel & Tennis courts available.Fitness classes & Gym."),
            const SizedBox(
              height: 180,
            ),
            Row(
              children: [
                SizedBox(
                  width: size.width * 0.4,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomeScreen()));
                  },
                  child: AuthButton(
                    size: size / 2,
                    text: "NEXT",
                    color: ColorConstants.primaryColor,
                    textColor: Colors.white,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
