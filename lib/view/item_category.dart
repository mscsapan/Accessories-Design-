import 'package:flutter/material.dart';

class ItemCategory extends StatefulWidget {
  @override
  State<ItemCategory> createState() => _ItemCategoryState();
}

class _ItemCategoryState extends State<ItemCategory> {
  final List<String> category = [
    'Wallet',
    'Watch',
    'Accessories',
    'Glasses',
    'Footwear',
    'Dresses',
  ];

  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 25.0,
      child: ListView.builder(
        itemCount: category.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () => setState(() => _selectedIndex = index),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(right: 10.0),
                  child: Text(
                    category[index],
                    style: TextStyle(
                      fontSize: 18.0,
                      color: _selectedIndex == index
                          ? Colors.black
                          : Colors.black45,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 2.0),
                  height: 1.0,
                  width: 40.0,
                  color: _selectedIndex == index
                      ? Colors.black87
                      : Colors.transparent,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
