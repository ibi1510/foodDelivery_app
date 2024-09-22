import 'package:flutter/material.dart';
import 'package:food_delivery_app/app/modules/home/controllers/shopping_controller.dart';
import 'package:get/get.dart';

class Shopping extends StatelessWidget {
  final ShoppingController controller = Get.put(ShoppingController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: Icon(Icons.arrow_back_ios),
        title: Text("Card", style: TextStyle(fontWeight: FontWeight.bold)),
      ),
      body: Center(
        child: Column(
          children: [
            Obx(() => ListView.builder(
                  shrinkWrap: true,
                  physics: BouncingScrollPhysics(),
                  itemCount: controller.shop.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(2),
                      child: Container(
                        height: 131,
                        width: 399,
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(12),
                              child: Container(
                                height: 99,
                                width: 90,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    image: DecorationImage(
                                        image: NetworkImage(
                                            controller.shop[index][0]),
                                        fit: BoxFit.cover)),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(),
                              child: Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 17),
                                      child: Container(
                                        width: 250,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(controller.shop[index][1],
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 20)),
                                            RichText(
                                                text: TextSpan(children: [
                                              WidgetSpan(
                                                child: Icon(
                                                    Icons.currency_rupee_sharp,
                                                    size: 16),
                                              ),
                                              TextSpan(
                                                  text: controller.shop[index]
                                                      [2],
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.bold))
                                            ]))
                                          ],
                                        ),
                                      ),
                                    ),
                                    Text(controller.shop[index][3]),
                                    Row(
                                      children: [
                                        RichText(
                                            text: TextSpan(children: [
                                          WidgetSpan(
                                              child: Icon(
                                            Icons.currency_rupee,
                                            color: Colors.deepOrangeAccent,
                                            size: 22,
                                          )),
                                          TextSpan(
                                              text: controller.shop[index][4],
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 25)),
                                        ])),
                                        SizedBox(width: 75),
                                        Row(
                                          children: [
                                            IconButton(
                                              onPressed: () {
                                                controller.decrementItem(index);
                                              },
                                              icon: Icon(
                                                  Icons
                                                      .arrow_drop_down_outlined,
                                                  color:
                                                      Colors.deepOrangeAccent),
                                            ),
                                            Text(controller.shop[index][5],
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 25)),
                                            IconButton(
                                              onPressed: () {
                                                controller.incrementItem(index);
                                              },
                                              icon: Icon(
                                                  Icons.arrow_drop_up_outlined,
                                                  color:
                                                      Colors.deepOrangeAccent),
                                            )
                                          ],
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                )),
            Padding(
              padding: const EdgeInsets.all(13),
              child: Row(
                children: [
                  Text("Delivery Fee",
                      style: TextStyle(fontWeight: FontWeight.w300)),
                  Spacer(),
                  Icon(Icons.currency_rupee_sharp, size: 18),
                  Obx(() => Text(controller.deliveryFee.value.toString(),
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold)))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 13, right: 13),
              child: Row(
                children: [
                  Text("Total", style: TextStyle(fontWeight: FontWeight.w300)),
                  Spacer(),
                  Icon(Icons.currency_rupee_sharp, size: 18),
                  Obx(() => Text(controller.total.value.toStringAsFixed(2),
                      style: TextStyle(
                          fontSize: 25, fontWeight: FontWeight.bold))),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              child: Divider(
                indent: 15,
                endIndent: 20,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 290),
              child: Text("Delivery Time",
                  style: TextStyle(fontWeight: FontWeight.w300)),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 13, top: 5),
              child: Row(
                children: [
                  Text("28 Feb 2021",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 25)),
                  SizedBox(width: 85),
                  Text("10:30 am",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 25)),
                  SizedBox(width: 15),
                  TextButton(
                    onPressed: () {},
                    child: Text("Edit",
                        style:
                            TextStyle(color: Colors.deepOrange, fontSize: 20)),
                  )
                ],
              ),
            ),
            Spacer(),
            ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                    shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15))),
                    backgroundColor: MaterialStatePropertyAll(
                      Colors.deepOrangeAccent,
                    ),
                    fixedSize: MaterialStatePropertyAll(Size(300, 55))),
                child: Center(
                    child: Text(
                  "CHECKOUT",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ))),
          ],
        ),
      ),
    );
  }
}
