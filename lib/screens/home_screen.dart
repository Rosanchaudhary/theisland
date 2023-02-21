import 'package:flutter/material.dart';
import 'package:the_island/constants/color_constants.dart';
import 'package:the_island/screens/booking_screen.dart';
import 'package:the_island/screens/classes_screen.dart';
import 'package:the_island/screens/profile_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final screens = const [ClassesScreen(), BookingScreen(), ProfileScreen()];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: PageView.builder(
          physics: const NeverScrollableScrollPhysics(),
          itemCount: screens.length,
          itemBuilder: (BuildContext context, int index) {
            return screens[selectedIndex];
          }),
      bottomNavigationBar: Container(
        height: 80,
        width: size.width,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(12),
            topRight: Radius.circular(12),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Center(
          child: Container(
            height: 50,
            width: size.width - 50,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: ColorConstants.primaryColor),
              borderRadius: BorderRadius.circular(25),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedIndex = 0;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "GROUP",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                              color: ColorConstants.primaryColor),
                        ),
                        Text(
                          "CLASSES",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: ColorConstants.primaryColor),
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedIndex = 1;
                      });
                    },
                    child: Container(
                      height: 50,
                      width: 100,
                      color: ColorConstants.primaryColor,
                      child: const Center(
                        child: Text(
                          "BOOKING",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedIndex = 2;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const CircleAvatar(
                          radius: 10,
                          foregroundImage: NetworkImage(
                              "https://s3-alpha-sig.figma.com/img/631a/2c77/cc65ee4907f79f09186864c1008ad1f6?Expires=1678060800&Signature=pNnzdMDc2U97PIiLSN-k7GDg16Ph8eJBJZQK50Jq5y0tSsBObOagRNNQXEeac~2VrCWA7BfIauc8qZ9~cMp4huCimlj6p5xsPxqCQlg0f1kzTEqbYISeeBwahQKGOfxVP0m8speXuTEUudyoNPGt5WN3v6xTjDmbBJYE-BI~beoxIwuwoXtq75Mv2VEqniJBQBE5qfb9rfEw~1MQTDPBLB-OmN6goQHQbFblqpk~tLA~us6sQ8cPnnwHxamiiLVMJas~oXbuLUco522N7nB-4fQz4fyjZQc6cD0ycg5Iv2RZPTvnnupUbEGcvvpJFHnfPx2oG1U6mD9JWLUD-pGLHw__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4"),
                        ),
                        Text(
                          "PROFILE",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: ColorConstants.primaryColor),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
