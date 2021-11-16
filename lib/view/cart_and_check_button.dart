import 'package:accessories_design/model/product_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CartAndCheckButton extends StatelessWidget {
  CartAndCheckButton({Key? key, required this.product}) : super(key: key);
  final Product product;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 14.0),
      child: Row(
        children: [
          Container(
            height: 45.0,
            width: 55.0,
            margin: EdgeInsets.only(right: 5.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              border: Border.all(
                color: Colors.grey,
              ),
            ),
            child: IconButton(
              onPressed: () {},
              icon: SvgPicture.asset('assets/add-to-cart.svg',
                  color: product.color),
            ),
          ),
          Expanded(
            child: SizedBox(
              height: 45.0,
              child: MaterialButton(
                onPressed: () {},
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0)),
                color: product.color,
                textColor: Colors.white,
                child: Text(
                  'Check out'.toUpperCase(),
                  style: TextStyle(fontWeight: FontWeight.w800, fontSize: 18.0),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
