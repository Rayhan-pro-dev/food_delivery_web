import 'package:flutter/material.dart';
import 'package:food_delivery_web/components/footer.dart';
import 'package:food_delivery_web/components/product.dart';

import '../components/email_banner.dart';
import '../components/header.dart';
import '../components/header_container.dart';
import '../constants/constants.dart';

class ProductDetailsScreen extends StatelessWidget {
  ProductDetailsScreen({this.product,this.onpress});
  final product;
  final onpress;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
           padding: const EdgeInsets.all(kPadding),
          //  constraints: BoxConstraints(maxWidth: kMaxWidth),
          child: Column(
            children: [
              const Header(),
              Products(product: product, press: onpress),
             
             const SizedBox(
              height: 40,
            ),
            Footer()
            ],
            
          ),
        ),
      ),
    );
  }
}
