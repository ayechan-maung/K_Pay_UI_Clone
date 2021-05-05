import 'package:FireAll/const/text_style.dart';
import 'package:flutter/material.dart';

class MyProfile extends StatefulWidget {
  @override
  _MyProfileState createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(120.0),
          child: Stack(
            children: [
              AppBar(
                title: Text('My'),
                centerTitle: true,
                actions: [
                  Container(
                    margin: EdgeInsets.only(right: 10.0),
                    width: 35,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.black54.withOpacity(0.2)),
                    child: IconButton(
                        icon: Icon(
                          Icons.headset_mic_outlined,
                          color: Colors.white70,
                          size: 18,
                        ),
                        onPressed: () {}),
                  )
                ],
              ),
              Container(
                  margin: EdgeInsets.only(top: 70),
                  child: ListTile(
                    leading: CircleAvatar(),
                    title: Text(
                      'AYE CHAN MAUNG',
                      style: mySty,
                    ),
                    subtitle: Text(
                      '0983399349',
                      style: mySty,
                    ),
                  ))
            ],
          )),
      body: ListView(
        children: [
          item(title: 'Coupons', icon: Icons.cast_outlined),
          SizedBox(
            height: 12.0,
          ),
          setting(),
          SizedBox(
            height: 12.0,
          ),
          app(),
          SizedBox(
            height: 12.0,
          ),
          logout()
        ],
      ),
    );
  }

  Widget item({IconData icon, String title}) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8.0, vertical: 6.0),
      padding: EdgeInsets.all(12.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6.0),
          boxShadow: [
            BoxShadow(
                color: Colors.black54.withOpacity(0.2),
                blurRadius: 3,
                offset: Offset(0, 2),
                spreadRadius: 0.2),
          ],
          color: Colors.white),
      child: Row(
        children: [
          Icon(icon),
          Text(title),
          Spacer(),
          Icon(
            Icons.arrow_forward_ios_rounded,
            color: Colors.grey,
            size: 12,
          )
        ],
      ),
    );
  }

  Widget logout() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8.0, vertical: 6.0),
      padding: EdgeInsets.all(12.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6.0),
          boxShadow: [
            BoxShadow(
                color: Colors.black54.withOpacity(0.2),
                blurRadius: 3,
                offset: Offset(0, 2),
                spreadRadius: 0.2),
          ],
          color: Colors.white),
      child: Text(
        'Log Out',
        textAlign: TextAlign.center,
      ),
    );
  }

  Widget settingItem({IconData icon, String title}) {
    return Container(
      // margin: EdgeInsets.symmetric(horizontal: 8.0),
      padding: EdgeInsets.all(12.0),
      // decoration: BoxDecoration(
      //     borderRadius: BorderRadius.circular(6.0),
      //     boxShadow: [
      //       BoxShadow(
      //           color: Colors.black54.withOpacity(0.2),
      //           blurRadius: 3,
      //           offset: Offset(0, 2),
      //           spreadRadius: 0.2),
      //     ],
      //     color: Colors.white),
      child: Row(
        children: [
          Icon(icon),
          SizedBox(
            width: 8.0,
          ),
          Text(title),
          Spacer(),
          Icon(
            Icons.arrow_forward_ios_rounded,
            color: Colors.grey,
            size: 12,
          )
        ],
      ),
    );
  }

  Widget setting() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6.0),
          boxShadow: [
            BoxShadow(
                color: Colors.black54.withOpacity(0.2),
                blurRadius: 3,
                offset: Offset(0, 2),
                spreadRadius: 0.2),
          ],
          color: Colors.white),
      child: Column(
        children: [
          settingItem(
            title: 'Pattern Management',
            icon: Icons.share_sharp,
          ),
          Divider(),
          settingItem(
            title: 'Pin Management',
            icon: Icons.lock_outline,
          ),
          Divider(),
          settingItem(
            title: 'Change Phone Number',
            icon: Icons.phone,
          ),
          Divider(),
          settingItem(
            title: 'Choose Language',
            icon: Icons.language,
          ),
          Divider(),
          settingItem(
            title: 'Limit & Fee',
            icon: Icons.account_tree_sharp,
          ),
        ],
      ),
    );
  }

  Widget app() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6.0),
          boxShadow: [
            BoxShadow(
                color: Colors.black54.withOpacity(0.2),
                blurRadius: 3,
                offset: Offset(0, 2),
                spreadRadius: 0.2),
          ],
          color: Colors.white),
      child: Column(
        children: [
          settingItem(
            title: 'Tutorials',
            icon: Icons.library_books_outlined,
          ),
          Divider(),
          settingItem(
            title: 'Old Version',
            icon: Icons.change_history,
          ),
          Divider(),
          settingItem(
            title: 'Help & Feedback',
            icon: Icons.feedback_outlined,
          ),
          Divider(),
          settingItem(
            title: 'About Pay',
            icon: Icons.star_outline_sharp,
          ),
          Divider(),
          settingItem(
            title: 'Share App',
            icon: Icons.share,
          ),
          Divider(),
          settingItem(
            title: 'Settings',
            icon: Icons.settings_applications_outlined,
          ),
        ],
      ),
    );
  }
}
