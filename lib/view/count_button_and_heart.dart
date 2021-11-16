import 'package:flutter/material.dart';

class CountButtonAndHeart extends StatefulWidget {
  const CountButtonAndHeart({Key? key}) : super(key: key);

  @override
  _CountButtonAndHeartState createState() => _CountButtonAndHeartState();
}

class _CountButtonAndHeartState extends State<CountButtonAndHeart> {
  int totalItem = 1;

  void productCount(int number) {
    if (number == 1) {
      setState(() {
        totalItem++;
      });
    }
    if (number == 2) {
      setState(() {
        if (totalItem > 1) {
          totalItem--;
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              SizedBox(
                height: 25.0,
                width: 35.0,
                child: OutlinedButton(
                  onPressed: () => productCount(2),
                  style: OutlinedButton.styleFrom(
                    padding: EdgeInsets.all(0.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                  child: Icon(Icons.remove),
                ),
              ),
              SizedBox(width: 5.0),
              Text(
                totalItem.toString().padLeft(2, '0'),
                style: Theme.of(context).textTheme.headline2!.copyWith(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              SizedBox(width: 5.0),
              SizedBox(
                height: 25.0,
                width: 35.0,
                child: OutlinedButton(
                  onPressed: () => productCount(1),
                  style: OutlinedButton.styleFrom(
                    padding: EdgeInsets.all(0.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                  child: Icon(Icons.add),
                ),
              ),
            ],
          ),
          Container(
            height: 30.0,
            width: 30.0,
            margin: EdgeInsets.only(right: 20.0),
            decoration: BoxDecoration(
              color: Colors.red,
              shape: BoxShape.circle,
            ),
            child: Icon(Icons.favorite, color: Colors.white),
          )
        ],
      ),
    );
  }
}
