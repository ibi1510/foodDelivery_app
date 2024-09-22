import 'package:flutter/material.dart';
import 'package:food_delivery_app/app/modules/home/views/complete_order.dart';
import 'package:food_delivery_app/app/modules/home/views/pending_order.dart';

class Order extends StatefulWidget {
  const Order({super.key});

  @override
  State<Order> createState() => _OrderState();
}

class _OrderState extends State<Order> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            leading: Icon(Icons.arrow_back_ios),
            title: Column(
              children: [
                Text("My Order",style: TextStyle(fontWeight: FontWeight.bold,)),
              ],
            ),
            bottom: TabBar(
                unselectedLabelColor: Colors.grey,
                indicatorColor: Color(0xfffe734c),
                labelColor: Color(0xfffe734c),
                // physics: BouncingScrollPhysics(),
                tabs: [
                  Tab(
                    text: "Complete Order",
                  ), Tab(
                    text: "Pending Order",
                  )
                ]),
          ),
          body:  TabBarView(
              physics: BouncingScrollPhysics(),
              children: [
                CompleteOrder(),
                PendingOrder()
              ])
      ),
    );
  }
}
