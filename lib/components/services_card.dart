import 'package:flutter/material.dart';
import 'package:food_delivery_web/components/body.dart';
import 'package:food_delivery_web/models/responsive.dart';

import '../constants/constants.dart';
import '../screens/service_card_details.dart';

class ServicesCard extends StatelessWidget {
  const ServicesCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // now we make service section attractive and good
    final Size _size = MediaQuery.of(context).size;
    return Wrap(
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        Services(
          image: "assets/images/delivery_boy.jpg",
          title: "Fastest Delivery",
          ontap: () {
            Navigator.push<void>(
              context,
              MaterialPageRoute<void>(
                builder: (BuildContext context) => ServiceCardDetailScreen(
                  service: Services(
                    image: "assets/images/delivery_boy.jpg",
                    title: "Fastest Delivery",
                    ontap: () {},
                  ),
                ),
              ),
            );
          },
        ),
        Services(
          image: "assets/images/menu.jpg",
          title: "So Much to Choose From",
          ontap: () {
            Navigator.push<void>(
              context,
              MaterialPageRoute<void>(
                builder: (BuildContext context) => ServiceCardDetailScreen(
                  service: Responsive(desktop: ProductCard(
              crossAxiscount: _size.width < 650 ? 2 : 3,
              aspectRatio: _size.width < 650 ? 0.85 : 1.1,
            ),
            tablet: ProductCard(
              crossAxiscount: _size.width < 825 ? 2 : 3,
              aspectRatio: _size.width < 825 ? 0.85 : 1.1,
            ),
            mobile: ProductCard(
              crossAxiscount: _size.width < 690 ? 2 : 3,
              aspectRatio: _size.width < 560 ? 0.85 : 1.1,
            ),)
                ),
              ),
            );
          },
        ),
        Services(
          image: "assets/images/offer.jpg",
          title: "Best Offer in Town",
          ontap: () {},
        ),
      ],
    );
  }
}

class Services extends StatelessWidget {
  const Services({
    Key? key,
    required this.image,
    required this.title,
    required this.ontap,
  }) : super(key: key);
  final String image, title;
  final VoidCallback ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Padding(
        padding: const EdgeInsets.all(kPadding),
        child: Material(
          elevation: 5,
          borderRadius: BorderRadius.circular(8.0),
          child: Container(
            padding: EdgeInsets.all(kPadding / 2),
            width: 300,
            child: Column(
              children: [
                Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(
                        image,
                        height: 80,
                        width: 80,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Text(
                        title,
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Lorem ipsum dolor sit amet,\nconsectetur adipiscing elit, ",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black54,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
