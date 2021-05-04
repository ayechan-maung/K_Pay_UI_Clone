import 'package:FireAll/views/life/life_page.dart';
import 'package:FireAll/views/my_page/my_profile.dart';
import 'package:FireAll/views/walllet.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> tabWidget;
  int currentPage = 0;

  @override
  void initState() {
    super.initState();
    tabWidget = [WalletPage(), LifePage(), MyProfile()];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: tabWidget[currentPage],
          ),
        ],
      ),
      bottomNavigationBar: bottomApp(),
    );
  }

  Widget bottomApp() {
    return BottomAppBar(
      child: Container(
        height: 50,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            tabButton(
                title: 'Wallet',
                icon: Icons.account_balance_wallet_outlined,
                iconColor: currentPage == 0 ? Colors.blue[900] : Colors.grey,
                onPressed: () {
                  setState(() {
                    currentPage = 0;
                  });
                }),
            tabButton(
                title: 'Life',
                icon: Icons.live_help_outlined,
                iconColor: currentPage == 1 ? Colors.blue[900] : Colors.grey,
                onPressed: () {
                  setState(() {
                    currentPage = 1;
                  });
                }),
            tabButton(
                title: 'My',
                icon: Icons.person,
                iconColor: currentPage == 2 ? Colors.blue[900] : Colors.grey,
                onPressed: () {
                  setState(() {
                    currentPage = 2;
                  });
                }),
          ],
        ),
      ),
    );
  }

  MaterialButton tabButton(
      {VoidCallback onPressed, String title, IconData icon, Color iconColor}) {
    return MaterialButton(
      onPressed: onPressed,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(
            icon,
            color: iconColor,
          ),
          Text(
            title,
            style: TextStyle(color: iconColor),
          )
        ],
      ),
    );
  }
}
