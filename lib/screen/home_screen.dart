import 'package:accessories_design/model/product_model.dart';
import 'package:accessories_design/view/app_bar.dart';
import 'package:accessories_design/view/item_category.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.white,
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
        Expanded(
            child: GridView.builder(
                itemCount: product.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10.0,
                    mainAxisSpacing: 10.0),
                itemBuilder: (context, index) {
                  return Container(
                    height: 400.0,
                    width: 200.0,
                    alignment: Alignment.center,
                    margin:
                        EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                    child: Column(
                      children: [
                        Container(
                            height: 300.0,
                            width: 200.0,
                            child: SvgPicture.asset(product[index].image)),
                        Text(product[index].title),
                        Text(product[index].price.toString()),
                      ],
                    ),
                  );
                }))
      ]),
    );
  }
}
