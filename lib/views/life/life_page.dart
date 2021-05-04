import 'package:FireAll/const/text_style.dart';
import 'package:FireAll/views/widget/life_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class LifePage extends StatefulWidget {
  @override
  _LifePageState createState() => _LifePageState();
}

class _LifePageState extends State<LifePage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: AppBar(
          title: Text('Life'),
          centerTitle: true,
        ),
        body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 8.0),
          shrinkWrap: true,
          children: [
            Container(
              height: height * 0.2,
              child: CarouselSlider(
                options: CarouselOptions(
                  autoPlay: true,
                ),
                items: [
                  Image.asset('assets/images/bill.png'),
                  Image.asset('assets/images/kVid.jpeg'),
                ],
              ),
            ),
            billPayment(),
            SizedBox(
              height: 8.0,
            ),
            finance(),
            SizedBox(
              height: 8.0,
            ),
            lifeService()
          ],
        ));
  }

  Widget billPayment() {
    double width = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Recharge and Bill Payment',
          style: promotionSty,
        ),
        Container(
          // height: 400,
          child: GridView(
            // crossAxisCount: 2,
            // crossAxisSpacing: 6,
            // mainAxisSpacing: 6,
            // childAspectRatio: 1 / 2,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 3.5 / 1,
                crossAxisCount: 2,
                crossAxisSpacing: 6,
                mainAxisSpacing: 6),
            shrinkWrap: true,
            physics: ScrollPhysics(),
            children: [
              LifeWidget(
                title: 'Top Up',
                width: width * 0.46,
                icon: Icons.mobile_friendly,
                onPressed: () {},
              ),
              LifeWidget(
                title: 'Gift Card',
                width: width * 0.46,
                icon: Icons.mobile_off_sharp,
                onPressed: () {},
              ),
              LifeWidget(
                title: 'Quick Pay',
                width: width * 0.46,
                icon: Icons.payments_outlined,
                onPressed: () {},
              ),
              LifeWidget(
                title: 'Bill Payment',
                width: width * 0.46,
                icon: Icons.payments,
                onPressed: () {},
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget finance() {
    double width = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Finance',
          style: promotionSty,
        ),
        Container(
          // height: 400,
          child: GridView(
            // crossAxisCount: 2,
            // crossAxisSpacing: 6,
            // mainAxisSpacing: 6,
            // childAspectRatio: 1 / 2,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 3.5 / 1,
                crossAxisCount: 2,
                crossAxisSpacing: 6,
                mainAxisSpacing: 6),
            shrinkWrap: true,
            physics: ScrollPhysics(),
            children: [
              LifeWidget(
                title: 'Pay Loan Center',
                width: width * 0.46,
                icon: Icons.mobile_friendly,
                onPressed: () {},
              ),
              LifeWidget(
                title: 'Branch Appointment',
                width: width * 0.46,
                icon: Icons.payments,
                onPressed: () {},
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget lifeService() {
    double width = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Life Service',
          style: promotionSty,
        ),
        Container(
          // height: 400,
          child: GridView(
            // crossAxisCount: 2,
            // crossAxisSpacing: 6,
            // mainAxisSpacing: 6,
            // childAspectRatio: 1 / 2,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 3.5 / 1,
                crossAxisCount: 2,
                crossAxisSpacing: 6,
                mainAxisSpacing: 6),
            shrinkWrap: true,
            physics: ScrollPhysics(),
            children: [
              LifeWidget(
                title: 'COVID -19',
                width: width * 0.46,
                icon: Icons.masks_outlined,
                onPressed: () {},
              ),
              LifeWidget(
                title: 'Min Thein Kha',
                width: width * 0.46,
                icon: Icons.local_drink_outlined,
                onPressed: () {},
              ),
              LifeWidget(
                title: 'Donation',
                width: width * 0.46,
                icon: Icons.ac_unit,
                onPressed: () {},
              ),
              LifeWidget(
                title: 'Travel',
                width: width * 0.46,
                icon: Icons.mobile_screen_share,
                onPressed: () {},
              ),
              LifeWidget(
                title: 'Pocket Money',
                width: width * 0.46,
                icon: Icons.money,
                onPressed: () {},
              ),
            ],
          ),
        ),
      ],
    );
  }
}
