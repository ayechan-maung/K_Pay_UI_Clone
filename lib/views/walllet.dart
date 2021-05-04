import 'package:FireAll/views/balance_part/balance.dart';
import 'package:FireAll/views/first_transition/wallet_transition.dart';
import 'package:FireAll/views/promotion/promotion.dart';
import 'package:flutter/material.dart';

class WalletPage extends StatefulWidget {
  @override
  _WalletPageState createState() => _WalletPageState();
}

class _WalletPageState extends State<WalletPage> {
  final titleSize =
      TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white);
  final scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('A Pay'),
      //   elevation: 0,
      //   actions: [
      //     notiIcon(
      //       icon: Icons.search,
      //     ),
      //     SizedBox(
      //       width: 8.0,
      //     ),
      //     notiIcon(icon: Icons.notifications_none_outlined)
      //   ],
      // ),
      body: Container(
        child: Stack(children: [
          heading(),
          Padding(
            padding: const EdgeInsets.only(top: 90),
            child: ListView(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              controller: scrollController,
              children: [
                BalancePart(),
                paymentPart(),
                WalletTransition(),
                Promotion()
              ],
            ),
          ),
        ]),
      ),
    );
  }

  Widget heading() {
    return Container(
      height: 130,
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      decoration: BoxDecoration(
          color: Colors.blue[800],
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(18))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'ACMPay',
            style: titleSize,
          ),
          Spacer(),
          notiIcon(
            icon: Icons.search,
          ),
          SizedBox(
            width: 8.0,
          ),
          notiIcon(icon: Icons.notifications_none_outlined)
        ],
      ),
    );
  }

  Widget notiIcon({IconData icon, VoidCallback onPressed}) {
    return Container(
      width: 35,
      decoration: BoxDecoration(
          shape: BoxShape.circle, color: Colors.black54.withOpacity(0.2)),
      child: IconButton(
          icon: Icon(
            icon,
            color: Colors.white70,
            size: 22,
          ),
          onPressed: onPressed),
    );
  }

  Widget paymentPart() {
    double width = MediaQuery.of(context).size.width;
    return Container(
      width: width,
      // height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          scanRec(
              title: 'Scan and Pay',
              width: width * 0.46,
              icon: Icon(
                Icons.qr_code_scanner,
                color: Colors.blue,
              )),
          scanRec(
              title: 'Receive',
              width: width * 0.46,
              icon: Icon(
                Icons.qr_code,
                color: Colors.blue,
              ))
        ],
      ),
    );
  }

  Widget scanRec(
      {Icon icon, String title, VoidCallback onPressed, double width}) {
    return Card(
      elevation: 3.0,
      child: Container(
        padding: EdgeInsets.all(12.0),
        width: width,
        child: Row(
          children: [
            icon,
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
