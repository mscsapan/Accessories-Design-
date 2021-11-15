import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

PreferredSizeWidget appBar() => AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      leading: IconButton(
        onPressed: () {},
        icon: SvgPicture.asset('assets/back.svg', width: 40.0, height: 30.0),
      ),
      actions: [
        SvgPicture.asset('assets/search-icon.svg', width: 20.0, height: 20.0),
        const SizedBox(width: 20.0),
        SvgPicture.asset('assets/add-to-cart.svg', width: 20.0, height: 20.0),
        const SizedBox(width: 10.0),
      ],
    );
