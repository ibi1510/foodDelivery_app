import 'package:flutter/material.dart';
import 'package:food_delivery_app/app/modules/home/controllers/fast_food_controller.dart';
import 'package:get/get.dart';

class FastFood extends StatelessWidget {
  final FastFoodController controller = Get.put(FastFoodController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => GridView.builder(
        shrinkWrap: true,
        physics: AlwaysScrollableScrollPhysics(),
        itemCount: controller.fastpic.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 5.0,
          mainAxisSpacing: 5.0,
          mainAxisExtent: 290,
        ),
        itemBuilder: (context, index) {
          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(5),
                child: Container(
                  height: 280,
                  width: 170,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade300,
                        blurRadius: 5,
                        offset: Offset(2, 0),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 153,
                        child: Stack(
                          children: [
                            Container(
                              height: 140,
                              width: 170,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(
                                      image: NetworkImage(controller.fastpic[index][0]),
                                      fit: BoxFit.fill)),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 16, bottom: 90),
                                child: Row(
                                  children: [
                                    Container(
                                      height: 20,
                                      width: 60,
                                      child: Center(
                                        child: RichText(
                                          text: TextSpan(children: [
                                            WidgetSpan(
                                              child: Icon(
                                                Icons.currency_rupee_sharp,
                                                color: Colors.deepOrange,
                                                size: 10,
                                              ),
                                            ),
                                            TextSpan(
                                              text: controller.fastpic[index][1],
                                              style: TextStyle(color: Colors.black),
                                            )
                                          ]),
                                        ),
                                      ),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                    SizedBox(width: 45),
                                    IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.heart_broken,
                                        color: Colors.red,
                                        size: 20,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              top: 130,
                              left: 15,
                              child: Container(
                                height: 25,
                                width: 75,
                                child: Center(
                                  child: RichText(
                                    text: TextSpan(children: [
                                      TextSpan(
                                        text: controller.fastpic[index][2],
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      WidgetSpan(
                                        child: Icon(
                                          Icons.star_half,
                                          color: Colors.yellow,
                                          size: 13,
                                        ),
                                      ),
                                      TextSpan(
                                        text: controller.fastpic[index][3],
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w300,
                                        ),
                                      ),
                                    ]),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 5),
                      Container(
                        margin: EdgeInsets.only(left: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              controller.fastpic[index][4],
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 22,
                              ),
                            ),
                            Text(
                              controller.fastpic[index][5],
                              style: TextStyle(
                                fontWeight: FontWeight.w300,
                                fontSize: 18,
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              style: ButtonStyle(
                                shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                                backgroundColor: MaterialStateProperty.all(
                                  Colors.deepOrangeAccent,
                                ),
                                fixedSize: MaterialStateProperty.all(Size(75, 40)),
                              ),
                              child: Center(
                                child: Text(
                                  "Add",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      )),
    );
  }
}
