
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CoffeeOrdered extends StatelessWidget {
  const CoffeeOrdered({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      height: 250,
      color: Colors.transparent,
      child: Stack(
        children: [
          Container(
            width: 180,
            height: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color(0xff1D1B25),
            ),
            child: const Padding(
                  padding: EdgeInsets.only(top: 25.0, left: 20.0),
                  child: Text(
                    'Your coffee has \nbeen ordered',
                    style: TextStyle(
                      fontFamily: "Inter",
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                ),
            ),
              Positioned(
                top: 70,
                left: -30,
                child: Image.asset(
                  'assets/images/coffee.png',
                  width: 100.0,
                  height: 100.0,
                  fit: BoxFit.fill,
                ),
              ),
              Positioned(
                top: 100.0, // Adjust the top position for the second image
                left: 120.0, // Adjust the left position for the second image
                child: Image.asset(
                  'assets/icons/verified.png',
                  width: 25.0,
                  height: 25.0,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          )
    );
  }
}