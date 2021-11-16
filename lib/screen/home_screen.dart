import 'package:accessories_design/view/app_bar.dart';
import 'package:accessories_design/view/item_category.dart';
import 'package:accessories_design/view/product_category.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Text('Man',
              style: Theme.of(context)
                  .textTheme
                  .headline3!
                  .copyWith(fontSize: 20.0)),
        ),
        SizedBox(height: 10.0),
        ItemCategory(),
        ProductItem()
      ]),
    );
  }
}
