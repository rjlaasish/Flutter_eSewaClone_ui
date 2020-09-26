import 'package:Bottom_Navbar/widgets/payment_option.dart';
import 'package:Bottom_Navbar/widgets/top_balance_part.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Container(
      child: Stack(children: [
        Container(
            width: screenWidth,
            height: screenHeight * 0.15,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20.0),
                  bottomRight: Radius.circular(20.0),
                ),
                color: Colors.green)),
        SingleChildScrollView(
          child: Column(
            children: [
              TopBalancepart(),
              PaymentOption(),
              SizedBox(
                height: 10.0,
              ),
               Container(
                    width: screenWidth * 0.95,
                    height: screenHeight * 0.25,
                  
                    child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  'assets/images/daraz.png',
                  fit: BoxFit.cover,
                ),
              )
                  ),
                   SizedBox(
                height: 10.0,
              ),
               PaymentOption(),
            ],
          ),
        )
      ]),
    );
  }
}
