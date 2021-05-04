import 'package:FireAll/const/text_style.dart';
import 'package:flutter/material.dart';

class Promotion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Promotion',
                  style: promotionSty,
                ),
                Text(
                  'View All',
                  style: TextStyle(color: Colors.blue),
                )
              ],
            ),
          ),
          Container()
        ],
      ),
    );
  }
}
