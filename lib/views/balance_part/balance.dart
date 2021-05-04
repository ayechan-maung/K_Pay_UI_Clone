import 'package:FireAll/const/text_style.dart';
import 'package:flutter/material.dart';

class BalancePart extends StatefulWidget {
  @override
  _BalancePartState createState() => _BalancePartState();
}

class _BalancePartState extends State<BalancePart> {
  bool isClose = false;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3.0,
      child: Container(
        // width: MediaQuery.of(context).size.width * 0.,
        height: 120,
        padding: EdgeInsets.symmetric(horizontal: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      Text('Balance (Ks)'),
                      SizedBox(
                        width: 8.0,
                      ),
                      InkWell(
                          onTap: () {
                            setState(() {
                              isClose = !isClose;
                            });
                          },
                          child: Icon(isClose
                              ? Icons.remove_red_eye_sharp
                              : Icons.panorama_fish_eye_outlined)),
                    ],
                  ),
                  Text(
                    '5,000',
                    style: amtSty,
                  ),
                  Text(
                    'Exchange',
                    style: exchangeSty,
                  )
                ],
              ),
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  IconButton(
                      icon: Icon(
                        Icons.arrow_forward_ios_rounded,
                        size: 14,
                        color: Colors.blue,
                      ),
                      onPressed: null),
                  cashInOut(title: 'Cash In'),
                  SizedBox(
                    height: 8,
                  ),
                  cashInOut(title: 'Cash Out'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget cashInOut({String title, VoidCallback onPressed}) {
    return Container(
      width: 80,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          border: Border.all(color: Colors.blue)),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 4.0),
        child: Text(
          title,
          style: TextStyle(fontSize: 12),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
