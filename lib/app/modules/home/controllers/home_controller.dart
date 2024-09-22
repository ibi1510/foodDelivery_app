// import 'package:get/get.dart';
//
// class HomeController extends GetxController {
//   //TODO: Implement HomeController
//
//   final count = 0.obs;
//   @override
//   void onInit() {
//     super.onInit();
//   }
//
//   @override
//   void onReady() {
//     super.onReady();
//   }
//
//   @override
//   void onClose() {
//     super.onClose();
//   }
//
//   void increment() => count.value++;
// }

import 'package:get/get.dart';
import 'package:flutter/material.dart';

class HomeController extends GetxController {
  var search = TextEditingController().obs;

  // Lists for restaurants and hotels
  var restaurants = [
    [
      "https://blog.indifi.com/wp-content/uploads/2019/12/How-To-Ensure-Right-Mix-Of-Dishes-In-A-Restaurant-Menu--450x300.jpg",
      "Panshi In",
      "40 Recipe"
    ],
    [
      "https://images.squarespace-cdn.com/content/v1/558b6f20e4b02743ade50425/1438025355347-O7HWXIXR3X17C79ECYFA/Beef%2C+Pineapple+Fried+Rice+1.jpg?format=1500w",
      "Food House",
      "35 Recipe"
    ],
    [
      "https://images.squarespace-cdn.com/content/v1/558b6f20e4b02743ade50425/1438025420158-GQS72UXMTHMZSUYYZ4U5/Kung+Bo+Chicken+With+Peanuts+2.jpg?format=1500w",
      "Food Land",
      "40 Recipe"
    ],
  ].obs;

  var hotels = [
    [
      "https://upload.wikimedia.org/wikipedia/commons/6/62/Barbieri_-_ViaSophia25668.jpg",
      "Hungry Station",
      "Jail road, Zinda Bazar, Sylhet"
    ],
    [
      "https://upload.wikimedia.org/wikipedia/commons/a/a5/Kellosaarenranta_by_night.JPG",
      "Artisan Coffee Shop",
      "Mira Bazar, Sylhet"
    ],
    [
      "https://upload.wikimedia.org/wikipedia/commons/3/3a/Chef%27s_table_at_Marcus.jpg",
      "KFC",
      "Zindabazar road,Sylhet"
    ],
  ].obs;
}
