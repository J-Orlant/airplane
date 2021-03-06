import 'package:airplane/shared/theme.dart';
import 'package:airplane/ui/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class SuccesCheckoutPage extends StatelessWidget {
  const SuccesCheckoutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 300,
            height: 150,
            margin: EdgeInsets.only(bottom: 80),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/image_succes.png'),
              ),
            ),
          ),
          Text(
            'Well Booked 😍',
            style: blackTextStyle.copyWith(
              fontWeight: semiBold,
              fontSize: 32,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Are you ready to explore the new\nworld of experiences?',
            style: greyTextStyle.copyWith(
              fontSize: 16,
              fontWeight: light,
            ),
            textAlign: TextAlign.center,
          ),
          CustomButton(
            title: 'My Bookings',
            width: 220,
            margin: EdgeInsets.only(top: 50),
            onPressed: () {
              Navigator.pushNamedAndRemoveUntil(
                  context, '/main', (route) => false);
            },
          ),
        ],
      )),
    );
  }
}
