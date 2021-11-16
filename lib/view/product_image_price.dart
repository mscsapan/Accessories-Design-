import 'package:accessories_design/model/product_model.dart';
import 'package:flutter/material.dart';

class ProductImageAndPrice extends StatelessWidget {
  const ProductImageAndPrice({Key? key, required this.product})
      : super(key: key);
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50.0, left: 20.0),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                      text: 'Price\n',
                      style: Theme.of(context).textTheme.headline2!.copyWith(
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0,
                          color: Colors.white)),
                  TextSpan(
                    text: '\$${product.price}',
                    style: Theme.of(context).textTheme.headline2!.copyWith(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(width: 10.0),
          Expanded(
            child: Hero(
              tag: '${product.id}',
              child: Image.asset(
                product.image,
                fit: BoxFit.fill,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
