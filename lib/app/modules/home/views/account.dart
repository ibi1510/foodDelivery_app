// import 'package:flutter/material.dart';
// import 'package:food_delivery_app/app/modules/home/controllers/account_controller.dart';
// import 'package:get/get.dart';
//
// class Account extends StatelessWidget {
//   final AccountController controller = Get.put(AccountController());
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         leading: Icon(Icons.arrow_back_ios),
//         title: Text("Review", style: TextStyle(fontWeight: FontWeight.bold)),
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Obx(() => ListView.builder(
//                   shrinkWrap: true,
//                   itemCount: controller.feedback.length,
//                   itemBuilder: (context, index) {
//                     return Column(
//                       children: [
//                         Padding(
//                           padding: const EdgeInsets.all(8),
//                           child: Column(
//                             children: [
//                               ListTile(
//                                 leading: CircleAvatar(
//                                   radius: 50,
//                                   backgroundImage: NetworkImage(
//                                       controller.feedback[index][0]),
//                                   child: Container(
//                                     margin: EdgeInsets.only(left: 35, top: 25),
//                                     height: 20,
//                                     width: 25,
//                                     decoration: BoxDecoration(
//                                         color: Colors.yellow,
//                                         borderRadius: BorderRadius.circular(4)),
//                                     child: Center(
//                                         child: Text(
//                                             controller.feedback[index][1],
//                                             style: TextStyle(
//                                                 color: Colors.white,
//                                                 fontSize: 10))),
//                                   ),
//                                 ),
//                                 title: Text(controller.feedback[index][2],
//                                     style: TextStyle(
//                                         fontWeight: FontWeight.bold,
//                                         fontSize: 16)),
//                                 subtitle: Text(controller.feedback[index][3]),
//                                 trailing: IconButton(
//                                     onPressed: () {},
//                                     icon: Icon(Icons.menu_sharp)),
//                               ),
//                               Padding(
//                                 padding:
//                                     const EdgeInsets.only(left: 25, top: 5),
//                                 child: Text(controller.feedback[index][4]),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ],
//                     );
//                   },
//                 )),
//             SizedBox(
//               height: 260,
//             ),
//             TextField(
//               controller: controller.fb,
//               decoration: InputDecoration(
//                   labelText: 'Write your review',
//                   labelStyle: TextStyle(color: Colors.grey),
//                   prefixIcon: Padding(
//                     padding: EdgeInsets.all(10.0),
//                     child: CircleAvatar(
//                       backgroundImage: NetworkImage(
//                         "https://th.bing.com/th/id/OIP.IGNf7GuQaCqz_RPq5wCkPgAAAA?rs=1&pid=ImgDetMain",
//                       ),
//                       radius: 20,
//                     ),
//                   ),
//                   fillColor: Colors.grey,
//                   focusedBorder: OutlineInputBorder(
//                     borderRadius: BorderRadius.all(Radius.circular(10.0)),
//                     borderSide: BorderSide(color: Colors.grey, width: 1.0),
//                   ),
//                   enabledBorder: OutlineInputBorder(
//                     borderRadius: BorderRadius.all(Radius.circular(10.0)),
//                     borderSide: BorderSide(color: Colors.grey, width: 1.0),
//                   )),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class Account extends StatefulWidget {
  const Account({super.key});

  @override
  State<Account> createState() => _foodpage5State();
}

class _foodpage5State extends State<Account> {
  TextEditingController nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios),
        title: Center(
            child: Text(
          "Review",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        )),
      ),
      body: const SingleChildScrollView(
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            backgroundImage: NetworkImage(
                              'https://wallpapercave.com/wp/wp4587120.jpg',
                            ),
                            radius: 30.0,
                            child: Align(
                              alignment: Alignment.bottomRight,
                              child: CircleAvatar(
                                  backgroundColor: Colors.yellow,
                                  radius: 12.0,
                                  child: Text(
                                    "5.0",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 10),
                                  )),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Nathasa Malkuba",
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "28/02/2021",
                              style:
                                  TextStyle(fontSize: 17, color: Colors.grey),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 60,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(Icons.more_vert),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Loved the class! Such beautiful land and collective impact infrastructure social entrepreneurship mass incarceration",
                    style: TextStyle(color: Colors.grey, fontSize: 18),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://www.hdwallpapers.in/download/black_hair_girl_model_in_blur_bokeh_background_hd_girls-1280x720.jpg'),
                            radius: 30,
                            child: Align(
                              alignment: Alignment.bottomRight,
                              child: CircleAvatar(
                                  backgroundColor: Colors.yellow,
                                  radius: 12.0,
                                  child: Text(
                                    "4.0",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 10),
                                  )),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Furinai Millabi",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "01/03/2021",
                            style: TextStyle(fontSize: 17, color: Colors.grey),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 100,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(Icons.more_vert),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Never run so well and it's all thanks to jordan.Silo framwork overcome justice ideate,citizen-centered effective",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            backgroundImage: NetworkImage(
                              'https://images.unsplash.com/photo-1592009309602-1dde752490ae?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80',
                            ),
                            radius: 30,
                            child: Align(
                              alignment: Alignment.bottomRight,
                              child: CircleAvatar(
                                  backgroundColor: Colors.yellow,
                                  radius: 12.0,
                                  child: Text(
                                    "4.5",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 10),
                                  )),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Sami Rafi",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "01/03/2021",
                            style: TextStyle(fontSize: 17, color: Colors.grey),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 100,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(Icons.more_vert),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                      "Big up my running crew,they better not say running crew who!Commitment equal opportunity empower,",
                      style: TextStyle(fontSize: 18, color: Colors.grey)),
                  SizedBox(
                    height: 120,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        labelText: 'write your review',
                        labelStyle: TextStyle(color: Colors.grey),
                        prefixIcon: Padding(
                          padding: EdgeInsets.all(10.0),
                          child: CircleAvatar(
                            backgroundImage: NetworkImage(
                              "https://th.bing.com/th/id/OIP.IGNf7GuQaCqz_RPq5wCkPgAAAA?rs=1&pid=ImgDetMain",
                            ),
                            radius: 20,
                          ),
                        ),
                        fillColor: Colors.grey,
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide:
                              BorderSide(color: Colors.grey, width: 1.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide:
                              BorderSide(color: Colors.grey, width: 1.0),
                        )),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
