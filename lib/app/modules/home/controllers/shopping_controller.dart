import 'package:get/get.dart';

class ShoppingController extends GetxController {
  var shop = [
    [
      "https://media.istockphoto.com/id/938742222/photo/cheesy-pepperoni-pizza.webp?s=2048x2048&w=is&k=20&c=gaJCN6GbnNTjlBeuZ2PNJvarzk3-i7kP8WEmMSub8zQ=",
      "Red n hot pizza",
      "M",
      "Spicy chicken beef",
      "9.50",
      "02"
    ],
    [
      "https://hebbarskitchen.com/wp-content/uploads/2020/08/parotta-recipe-kerala-paratha-recipe-malabar-paratha-recipe-1-768x1152.jpeg",
      "Parata",
      "M",
      "Spicy chicken beef",
      "9.50",
      "02"
    ]
  ].obs; // Observable List for Shop

  // Variables for delivery fee and total
  var deliveryFee = 5.30.obs;
  var total = 311.05.obs;

  // Function to update quantity
  void incrementItem(int index) {
    int currentQuantity = int.parse(shop[index][5]);
    shop[index][5] = (currentQuantity + 1).toString();
    updateTotal();
  }

  void decrementItem(int index) {
    int currentQuantity = int.parse(shop[index][5]);
    if (currentQuantity > 1) {
      shop[index][5] = (currentQuantity - 1).toString();
      updateTotal();
    }
  }

  // Function to update the total price
  void updateTotal() {
    double sum = shop.fold(0.0, (acc, item) => acc + (double.parse(item[4]) * int.parse(item[5])));
    total.value = sum + deliveryFee.value;
  }
}
