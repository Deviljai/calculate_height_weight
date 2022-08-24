import 'package:flutter/material.dart';

import '../Constants/app_constants.dart';

class leftbar extends StatelessWidget {
  final double barwidth;

  const leftbar({Key? key, required this.barwidth}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          height: 25,
          width: barwidth,
          decoration: BoxDecoration(

            color: yelo,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(20.0),
            bottomRight: Radius.circular(20.0))
          ),
        ),
      ],
    );
  }
}
