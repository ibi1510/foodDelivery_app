import 'package:flutter/material.dart';
import 'package:food_delivery_app/app/modules/home/views/account.dart';
import 'package:food_delivery_app/app/modules/home/views/home_main.dart';
import 'package:food_delivery_app/app/modules/home/views/order.dart';
import 'package:food_delivery_app/app/modules/home/views/search_tab_bar.dart';
import 'package:food_delivery_app/app/modules/home/views/shopping.dart';

class bottom_page extends StatefulWidget {
  const bottom_page({super.key});

  @override
  State<bottom_page> createState() => _bottom_pageState();
}

class _bottom_pageState extends State<bottom_page> {
  int currentIndex = 0;
  List pages =[Home(),search_tab_bar(),Shopping(),Order(),Account()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        // backgroundColor: Colors.red,
        showUnselectedLabels: true,
        unselectedItemColor: Color(0xff3b5062),
        // selectedItemColor: Colors.lightBlue,
        // unselectedItemColor: Colors.black,
        // selectedFontSize: 20,
        // unselectedFontSize: 20,
        // selectedLabelStyle: TextStyle(color: Colors.black45),
        unselectedLabelStyle: TextStyle(fontSize: 13),
        // iconSize: 40,
        // selectedIconTheme: IconThemeData(size: 30,color: Colors.indigo),
        // unselectedIconTheme: IconThemeData(size: 30,color: Colors.green),
        selectedItemColor: Color(0xfffd724c),
        selectedIconTheme: IconThemeData(color: Color(0xfffd724c)),
        unselectedIconTheme: IconThemeData(color: Color(0xff3b5062)),
        currentIndex: currentIndex,
        onTap: (i) {
          setState(() {
            currentIndex = i;
          });
        },
        items: [
          const BottomNavigationBarItem(
            icon:  Icon(Icons.home),
            backgroundColor: Color(0xffffffff),
            label: "Home",
          ),
          const BottomNavigationBarItem(
              icon:  Icon(Icons.search_off_outlined),
              label: "Search"
          ),
          const BottomNavigationBarItem(
              icon:  Icon(Icons.shopping_cart_checkout_sharp,color: Color(0xfffd724c),size: 45),
              label: ""
          ),const BottomNavigationBarItem(
              icon:  Icon(Icons.work_history_outlined),
              label: "Order"
          ),const BottomNavigationBarItem(
              icon:  Icon(Icons.person),
              label: "Account"
          ),
        ],
      ),
    );
  }
}
