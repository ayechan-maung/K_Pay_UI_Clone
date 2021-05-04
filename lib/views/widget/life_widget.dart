import 'package:flutter/material.dart';

class LifeWidget extends StatelessWidget {
  final VoidCallback onPressed;
  final String title;
  final IconData icon;
  final double width;

  const LifeWidget(
      {Key key,
      @required this.onPressed,
      @required this.title,
      @required this.icon,
      @required this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      // elevation: 2.0,
      child: Container(
        padding: EdgeInsets.all(12.0),
        width: width,
        child: Row(
          children: [
            Icon(
              icon,
              color: Colors.blue[800],
            ),
            SizedBox(
              width: 8,
            ),
            Text(title)
          ],
        ),
      ),
    );
  }
}
