import 'package:flutter/material.dart';
import 'package:food_delivery_app/app/modules/home/controllers/home_controller.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  final HomeController controller =
      Get.put(HomeController()); // Instantiate the controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          margin: EdgeInsets.only(left: 10, top: 10),
          height: 30,
          width: 40,
          decoration: BoxDecoration(
            color: Color(0xfff8f8f8),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Icon(Icons.menu_open_outlined),
        ),
        title: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Deliver to",
                      style: TextStyle(fontWeight: FontWeight.w500)),
                  Icon(Icons.keyboard_arrow_down_rounded)
                ],
              ),
            ),
            Text(
              "Parijat, Housing Estate",
              style: TextStyle(color: Color(0xfffd724c), fontSize: 20),
            )
          ],
        ),
        actions: [
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(8),
                image: DecorationImage(
                  image: NetworkImage(
                      "https://images.unsplash.com/photo-1615109398623-88346a601842?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
                  fit: BoxFit.cover,
                )),
          ),
          SizedBox(width: 10),
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 155, top: 25),
                child: Text(
                  "Welcome Foody!",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  width: 360,
                  height: 60,
                  decoration: BoxDecoration(
                      color: Color(0xfff8f8f8),
                      borderRadius: BorderRadius.circular(15)),
                  child: Center(
                    child: Obx(() => TextField(
                          controller: controller.search.value,
                          decoration: InputDecoration(
                            filled: true,
                            prefixIcon:
                                Icon(Icons.search, color: Colors.black45),
                            hintText: "Find Your Food",
                            suffixIcon: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.restaurant_menu_sharp,
                                  color: Color(0xfffd724c),
                                )),
                            fillColor: Color(0xfff5f5f5),
                            border: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xfff8f8f8)),
                                borderRadius: BorderRadius.circular(15)),
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xfff8f8f8)),
                                borderRadius: BorderRadius.circular(15)),
                            focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xfff8f8f8)),
                                borderRadius: BorderRadius.circular(15)),
                          ),
                        )),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Row(
                  children: [
                    Text("Nearby Place",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 25)),
                    SizedBox(width: 155),
                    TextButton(
                      onPressed: () {},
                      child: Text("See All (12)",
                          style: TextStyle(
                              color: Color(0xfffd724c), fontSize: 15)),
                    ),
                  ],
                ),
              ),
              Obx(() => ListView.builder(
                    physics: BouncingScrollPhysics(),
                    itemCount: controller.hotels.length,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Container(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 15, right: 10, top: 5),
                              child: Card(
                                color: Color(0xfff5f5f5),
                                child: ListTile(
                                  leading: Container(
                                    height: 55,
                                    width: 55,
                                    decoration: BoxDecoration(
                                        color: Color(0xfff5f5f5),
                                        borderRadius: BorderRadius.circular(15),
                                        image: DecorationImage(
                                            image: NetworkImage(
                                                controller.hotels[index][0]),
                                            fit: BoxFit.cover)),
                                  ),
                                  title: Text(
                                    controller.hotels[index][1],
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                  subtitle: Text(controller.hotels[index][2],
                                      style: TextStyle(fontSize: 15)),
                                  trailing: Icon(Icons.abc_outlined),
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  )),
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Row(
                  children: [
                    Text("Popular Restaurants",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 25)),
                    SizedBox(width: 82),
                    TextButton(
                      onPressed: () {},
                      child: Text("See All (12)",
                          style: TextStyle(
                              color: Color(0xfffd724c), fontSize: 15)),
                    ),
                  ],
                ),
              ),
              Container(
                height: 280,
                color: Color(0xfff6f6f6),
                child: Obx(() => ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      physics: BouncingScrollPhysics(),
                      itemCount: controller.restaurants.length,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(5),
                              child: Container(
                                width: 250,
                                height: 220,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    image: DecorationImage(
                                        image: NetworkImage(
                                            controller.restaurants[index][0]),
                                        fit: BoxFit.cover)),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 150),
                              child: Text(
                                controller.restaurants[index][1],
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 20),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 150),
                              child: Text(controller.restaurants[index][2]),
                            )
                          ],
                        );
                      },
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
