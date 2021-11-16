import 'package:accessories_design/model/product_model.dart';
import 'package:accessories_design/view/app_bar.dart';
import 'package:accessories_design/view/cart_and_check_button.dart';
import 'package:accessories_design/view/colors_and_size.dart';
import 'package:accessories_design/view/count_button_and_heart.dart';
import 'package:accessories_design/view/product_image_price.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key, required this.product}) : super(key: key);
  final Product product;

  @override
  build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: product.color,
      appBar: appBar(onTap: () => Navigator.of(context).pop(), isWhite: false),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: size.height,
              child: Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: size.height * 0.3),
                    padding: EdgeInsets.only(top: size.height * 0.1),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(25.0),
                        topLeft: Radius.circular(25.0),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ColorAndSize(product: product),
                        SizedBox(height: 15.0),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(product.description,
                              style: TextStyle(fontSize: 14.0),
                              textAlign: TextAlign.justify),
                        ),
                        SizedBox(height: 15.0),
                        CountButtonAndHeart(),
                        SizedBox(height: 30.0),
                        CartAndCheckButton(product: product)
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Men\'s Classic Wallet',
                          style: Theme.of(context)
                              .textTheme
                              .headline4!
                              .copyWith(fontSize: 16.0, color: Colors.white),
                        ),
                        SizedBox(height: 2.0),
                        Text(
                          product.title,
                          style: Theme.of(context)
                              .textTheme
                              .headline4!
                              .copyWith(
                                  fontSize: 24.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1.2),
                        ),
                      ],
                    ),
                  ),
                  //SizedBox(height: 40.0),
                  ProductImageAndPrice(product: product),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
