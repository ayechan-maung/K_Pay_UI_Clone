import 'package:flutter/material.dart';

class WalletTransition extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Card(
      elevation: 3.0,
      child: Container(
        // height: height * 0.45,
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
        child: Column(
          children: [
            singleTransition(
                icon: Icons.shop_rounded,
                title: 'Pay Loan Center',
                trailing: Icons.arrow_forward_ios_rounded),
            Divider(),
            singleTransition(
                icon: Icons.monetization_on_outlined,
                title: 'Transfer',
                trailing: Icons.arrow_forward_ios_rounded),
            Divider(),
            singleTransition(
                icon: Icons.location_on_outlined,
                title: 'Nearby',
                trailing: Icons.arrow_forward_ios_rounded),
            Divider(),
            singleTransition(
                icon: Icons.credit_card_outlined,
                title: 'Bank Account',
                trailing: Icons.arrow_forward_ios_rounded),
            Divider(),
            singleTransition(
                icon: Icons.history,
                title: 'History',
                trailing: Icons.arrow_forward_ios_rounded),
          ],
        ),
      ),
    );
  }

  Widget singleTransition({IconData icon, String title, IconData trailing}) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        children: [
          Icon(
            icon,
            color: Colors.blue,
          ),
          SizedBox(
            width: 8.0,
          ),
          Text(title),
          Spacer(),
          Icon(
            trailing,
            size: 16,
            color: Colors.grey,
          )
        ],
      ),
    );
  }
}
