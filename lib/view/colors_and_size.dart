import 'package:accessories_design/model/product_model.dart';
import 'package:flutter/material.dart';

class ColorAndSize extends StatefulWidget {
  final Product product;
  ColorAndSize({required this.product});

  @override
  State<ColorAndSize> createState() => _ColorAndSizeState();
}

class _ColorAndSizeState extends State<ColorAndSize> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    print('===== SetState=====');
    return Row(
      children: [
        Container(
          margin: EdgeInsets.only(left: 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Colors'),
              SizedBox(height: 4.0),
              Row(
                children: List.generate(
                  4,
                  (index) => GestureDetector(
                    onTap: () => setState(() => _selectedIndex = index),
                    child: Container(
                      width: 20.0,
                      height: 20.0,
                      padding: EdgeInsets.all(2.0),
                      margin: EdgeInsets.only(right: 5.0),
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: _selectedIndex == index
                                ? Color(0xFF356C95)
                                : Colors.transparent),
                        shape: BoxShape.circle,
                      ),
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          color: colors[index], //Color(0xFF356C95),
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(width: 40.0),
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: 'Size\n',
                style: Theme.of(context)
                    .textTheme
                    .headline2!
                    .copyWith(fontSize: 16.0),
              ),
              TextSpan(
                text: '12 cm',
                style: Theme.of(context)
                    .textTheme
                    .headline2!
                    .copyWith(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
