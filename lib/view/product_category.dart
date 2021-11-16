import 'package:accessories_design/model/product_model.dart';
import 'package:accessories_design/screen/details_screen.dart';
import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        itemCount: product.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10.0,
          childAspectRatio: 0.8,
        ),
        itemBuilder: (context, index) {
          Product pro = product[index];
          return GestureDetector(
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => DetailScreen(product: pro),
                    fullscreenDialog: false)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 160.0,
                  width: 200.0,
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                      color: pro.color,
                      borderRadius: BorderRadius.circular(10.0)),
                  margin:
                      EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                  child: Hero(
                      tag: '${pro.id}',
                      child: Image.asset(product[index].image)),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        pro.title,
                        style: Theme.of(context).textTheme.headline2!.copyWith(
                            fontSize: 18.0, fontWeight: FontWeight.w500),
                      ),
                      Text(
                        '\$${pro.price.toString()}',
                        style: Theme.of(context).textTheme.headline2!.copyWith(
                            fontSize: 16.0, fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
