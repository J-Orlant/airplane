import 'package:airplane/ui/pages/choose_seat_page.dart';
import 'package:airplane/ui/widgets/custom_button.dart';
import 'package:airplane/ui/widgets/interest_item.dart';
import 'package:airplane/ui/widgets/photo_items.dart';
import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget backgroundImage() {
      return Container(
        width: double.infinity,
        height: 450,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/image_destination1.png'),
            fit: BoxFit.cover,
          ),
        ),
      );
    }

    Widget customShadow() {
      return Container(
        width: double.infinity,
        height: 215,
        margin: EdgeInsets.only(top: 236),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              kWhiteColor.withOpacity(0),
              Colors.black.withOpacity(0.95),
            ],
          ),
        ),
      );
    }

    Widget content() {
      return Container(
        margin: EdgeInsets.symmetric(
          horizontal: defaultMargin,
        ),
        child: Column(
          children: [
            // NOTE: Emblem
            Container(
              width: double.infinity,
              height: 24,
              margin: EdgeInsets.only(top: 40),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/icon_emblem.png'),
                ),
              ),
            ),

            // NOTE: Title
            Container(
              margin: EdgeInsets.only(top: 256),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Lake Ciliwung',
                          style: whiteTextStyle.copyWith(
                            fontSize: 24,
                            fontWeight: semiBold,
                          ),
                        ),
                        Text(
                          'Tangerang',
                          style: whiteTextStyle.copyWith(
                            fontSize: 16,
                            fontWeight: light,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 20,
                        height: 20,
                        margin: EdgeInsets.only(right: 2),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/icon_star.png'),
                          ),
                        ),
                      ),
                      Text(
                        '4.8',
                        style: whiteTextStyle.copyWith(
                          fontWeight: medium,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // NOTE: About
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(top: 30),
              padding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 30,
              ),
              decoration: BoxDecoration(
                color: kWhiteColor,
                borderRadius: BorderRadius.circular(18),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // NOTE: About
                  Container(
                    margin: EdgeInsets.only(bottom: 6),
                    child: Text(
                      'About',
                      style: blackTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: semiBold,
                      ),
                    ),
                  ),
                  Container(
                    child: Text(
                      'Berada di jalur jalan provinsi yang menghubungkan Denpasar Singaraja serta letaknya yang dekat dengan Kebun Raya Eka Karya menjadikan tempat Bali.',
                      style: blackTextStyle.copyWith(
                        fontSize: 14,
                        height: 2,
                      ),
                    ),
                  ),
                  // NOTE: Photos
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Text(
                      'Photos',
                      style: blackTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: semiBold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Row(
                    children: [
                      PhotoItem(imageUrl: 'assets/image_photo1.png'),
                      PhotoItem(imageUrl: 'assets/image_photo2.png'),
                      PhotoItem(imageUrl: 'assets/image_photo3.png'),
                    ],
                  ),

                  SizedBox(
                    height: 20,
                  ),

                  // NOTE: Interest

                  Text(
                    'Interest',
                    style: blackTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: semiBold,
                    ),
                  ),

                  SizedBox(
                    height: 6,
                  ),

                  Row(
                    children: [
                      InterestItem(title: 'Kids Park'),
                      InterestItem(title: 'Honor Bridge'),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      InterestItem(title: 'City Museum'),
                      InterestItem(title: 'Central Mall'),
                    ],
                  ),
                ],
              ),
            ),

            // NOTE: Book and Price
            Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(vertical: 30),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'IDR 2.500.000',
                          style: blackTextStyle.copyWith(
                            fontSize: 18,
                            fontWeight: medium,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'per Orang',
                          style: blackTextStyle.copyWith(fontWeight: light),
                        ),
                      ],
                    ),
                  ),

                  // NOTE: Book Button
                  CustomButton(
                    title: 'Book Now',
                    width: 170,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return ChooseSeatPage();
                          },
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            backgroundImage(),
            customShadow(),
            content(),
          ],
        ),
      ),
    );
  }
}
