import 'package:flutter/material.dart';
import 'package:food_delivery_app/app/modules/home/controllers/complete_order_controller.dart';
import 'package:get/get.dart';

class CompleteOrder extends StatelessWidget {
  final CompleteOrderController controller = Get.put(CompleteOrderController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => Column(
        children: [
          ListView.builder(
            shrinkWrap: true,
            physics: BouncingScrollPhysics(),
            itemCount: controller.orderres.length,
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
                                  image: NetworkImage(controller.orderres[index][0]),
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
                                child: Row(
                                  children: [
                                    Text(controller.orderres[index][1],
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20)),
                                    SizedBox(
                                      width: 83,
                                    ),
                                    RichText(
                                        text: TextSpan(children: [
                                          WidgetSpan(
                                            child: Icon(Icons.currency_rupee_sharp,
                                                size: 16),
                                          ),
                                          TextSpan(
                                              text: controller.orderres[index][2],
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold))
                                        ]))
                                  ],
                                ),
                              ),
                              Text(controller.orderres[index][3]),
                              Row(
                                children: [
                                  RichText(
                                      text: TextSpan(children: [
                                        WidgetSpan(
                                            child: Icon(
                                              Icons.fastfood_sharp,
                                              size: 22,
                                            )),
                                        TextSpan(
                                          text: "Spicy",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 18),
                                        ),
                                      ])),
                                  SizedBox(
                                    width: 85,
                                  ),
                                  TextButton(
                                      onPressed: () {},
                                      child: Text(
                                        "Order Again",
                                        style: TextStyle(
                                            color: Color(0xfffe734c),
                                            fontSize: 18,
                                            fontWeight: FontWeight.w400),
                                      ))
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
          )
        ],
      )),
    );
  }
}
