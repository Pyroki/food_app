import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:food_app/pages/home_page.dart';
import 'package:food_app/pages/order_page.dart';
import 'package:food_app/pages/profile_pae.dart';
import 'package:food_app/pages/wallet_page.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int currenttabindex = 0;

  late List<Widget> pages;
  late Widget currentpage;
  late HomePage homepage;
  late Profile profile;
  late WalletPage wallet;
  late OrderPage orderPage;

  @override
  void initState() {
    homepage = HomePage();
    wallet = WalletPage();
    profile = Profile();
    orderPage = OrderPage();

    pages = [homepage, orderPage, profile, wallet];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
          height: 65,
          backgroundColor: const Color.fromARGB(255, 255, 255, 255),
          color: Colors.black,
          animationDuration: Duration(milliseconds: 300),
          onTap: (int index) {
            setState(() {
              currenttabindex = index;
            });
          },
          items: [
            Icon(
              Icons.home_outlined,
              color: const Color.fromARGB(255, 255, 255, 255),
            ),
            Icon(
              Icons.shopping_bag_outlined,
              color: const Color.fromARGB(255, 255, 255, 255),
            ),
            Icon(
              Icons.wallet_outlined,
              color: const Color.fromARGB(255, 255, 255, 255),
            ),
            Icon(
              Icons.person_2_outlined,
              color: const Color.fromARGB(255, 255, 255, 255),
            ),
          ]),
      body: pages[currenttabindex],
    );
  }
}
