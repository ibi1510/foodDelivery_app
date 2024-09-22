import 'package:flutter/material.dart';
import 'package:food_delivery_app/app/modules/home/views/all_empty.dart';
import 'package:food_delivery_app/app/modules/home/views/fast_food.dart';
import 'package:food_delivery_app/app/modules/home/views/heavy_food.dart';
import 'package:food_delivery_app/app/modules/home/views/platter.dart';

class search_tab_bar extends StatefulWidget {
  const search_tab_bar({super.key});

  @override
  State<search_tab_bar> createState() => _search_b2State();
}

class _search_b2State extends State<search_tab_bar> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.arrow_back_ios),
          title: Text("Food Menu",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25)),
          centerTitle: true,
          actions: [
            CircleAvatar(
              backgroundColor: Color(0xfffe734c),
              radius: 19,
              child:
                  Icon(Icons.shopping_cart_checkout_sharp, color: Colors.white),
            ),
            SizedBox(
              width: 8,
            )
          ],
          bottom: TabBar(
              unselectedLabelStyle: TextStyle(color: Colors.grey),
              indicatorColor: Color(0xfffe734c),
              labelColor: Color(0xfffe734c),
              tabs: [
                Tab(
                  child: Text("ALl"),
                ),
                Tab(
                  child: Text("Fast food"),
                ),
                Tab(
                  child: Text("Heavy food"),
                ),
                Tab(
                  child: Text("Platter"),
                ),
              ]),
        ),
        body:
            TabBarView(
                children: [
                  AllEmpty(),
                  FastFood(),
                  HeavyFood(),
                  Platter()]),
      ),
    );
  }
}
