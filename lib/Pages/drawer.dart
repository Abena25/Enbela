import 'package:flutter/material.dart';
import 'package:testapp/Pages/coupons.dart';
import 'package:testapp/Pages/home.dart';
import 'package:testapp/Pages/favourite.dart';
import 'package:testapp/Pages/notification.dart';
import 'package:testapp/Pages/payment.dart';
import 'package:testapp/Pages/search.dart';
import 'package:testapp/Pages/track.dart';
import 'package:testapp/constant.dart';

class FDrawer extends StatelessWidget {
  final padding = EdgeInsets.symmetric(horizontal: 20);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: kDarkGreyColor,
        child: ListView(
          padding: padding,
          children: <Widget>[
            const SizedBox(
              height: 32,
            ),
            buildMenuItem(
                image: "Assets/Icons/menu2.png",
                text: 'Menu',
                onClicked: () => selectedItem(context, 0)),
            const SizedBox(
              height: 16,
            ),
            buildMenuItem(
                image: "Assets/Icons/search.png",
                text: 'Search',
                onClicked: () => selectedItem(context, 1)),
            const SizedBox(
              height: 16,
            ),
            buildMenuItem(
                image: "Assets/Icons/cart.png",
                text: 'Cart',
                onClicked: () => selectedItem(context, 2)),
            const SizedBox(
              height: 16,
            ),
            buildMenuItem(
                image: "Assets/Icons/notification.png",
                text: 'Notifications',
                onClicked: () => selectedItem(context, 3)),
            const SizedBox(
              height: 16,
            ),
            Divider(
              color: Colors.white70,
            ),
            const SizedBox(
              height: 16,
            ),
            buildMenuItem(
                image: "Assets/Icons/progress.png",
                text: 'Order Status',
                onClicked: () => selectedItem(context, 4)),
            const SizedBox(
              height: 16,
            ),
            buildMenuItem(
                image: "Assets/Icons/ticket.png",
                text: 'Coupons',
                onClicked: () => selectedItem(context, 5)),
                const SizedBox(
              height: 16,
            ),
            buildMenuItem(
              image: "Assets/Icons/payment.png",
                text: 'My Wallet',
                onClicked: () => selectedItem(context, 6)),
          ],
        ),
      ),
    );
  }

  Widget buildMenuItem({
    required String text,
    required String image,
    VoidCallback? onClicked,
  }) {
    final color = Colors.white;
    final hoverColor = kPrimaryColor.withOpacity(0.9);

    return ListTile(
      leading: ImageIcon(
        AssetImage(image),
        size: 36.0,
        color: color,
      ),
      title: Text(
        text,
        style: TextStyle(color: color),
      ),
      hoverColor: hoverColor,
      onTap: onClicked,
    );
  }

  void selectedItem(BuildContext context, int index) {
    Navigator.of(context).pop();
    switch (index) {
      case 0:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => Home(),
        ));
        break;
      case 1:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => Search(),
        ));
        break;
      case 2:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => Favs(),
        ));
        break;
      case 3:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => Notifications(),
        ));
        break;
      case 4:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => TrackOrder(),
        ));
        break;
      case 5:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => MyWallet(),
        ));
        break;
    }
  }
}
