
import 'package:flutter/material.dart';
import 'package:the_island/constants/color_constants.dart';

class LocationCard extends StatelessWidget {
  final bool isSelected;
  final String title;
  final String desc;
  const LocationCard(
      {Key? key,
      required this.isSelected,
      required this.size,
      required this.title,
      required this.desc})
      : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Container(
        width: size.width,
        decoration: BoxDecoration(
            color: const Color.fromRGBO(239, 239, 239, 1),
            borderRadius: BorderRadius.circular(15)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 18,
                width: 18,
                decoration: isSelected
                    ? BoxDecoration(
                        color: ColorConstants.primaryColor,
                        borderRadius: BorderRadius.circular(9))
                    : BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                            color: ColorConstants.primaryColor, width: 1),
                        borderRadius: BorderRadius.circular(9)),
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                        color: ColorConstants.primaryColor,
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    width: size.width - 80,
                    child: Text(
                      desc,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          color: ColorConstants.primaryColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
