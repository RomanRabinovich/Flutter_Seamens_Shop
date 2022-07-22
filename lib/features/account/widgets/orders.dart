import 'package:amazon_clone_tutorial/constants/global_variables.dart';
import 'package:amazon_clone_tutorial/features/account/widgets/single_product.dart';
import 'package:flutter/material.dart';

class Orders extends StatefulWidget {
  const Orders({Key? key}) : super(key: key);

  @override
  State<Orders> createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {
  //temprory list
  List list = [
    'https://images.unsplash.com/photo-1517336714731-489689fd1ca8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8bWFjYm9va3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=900&q=60',
    'https://images.unsplash.com/photo-1472491235688-bdc81a63246e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cHVzc3l8ZW58MHx8MHx8&auto=format&fit=crop&w=900&q=60',
    'https://images.unsplash.com/photo-1608270586620-248524c67de9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8YmVlcnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=900&q=60',
    'https://images.unsplash.com/photo-1598509523659-6d5cd643c571?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzV8fHZvZGthfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=900&q=60',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: const EdgeInsets.only(
                left: 15,
              ),
              child: const Text(
                'Your Orders',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(
                right: 15,
              ),
              child: Text(
                'See All',
                style: TextStyle(
                  color: GlobalVariables.selectedNavBarColor,
                ),
              ),
            ),
          ],
        ),
        //display orders
        Container(
          height: 170,
          padding: const EdgeInsets.only(
            left: 10,
            top: 20,
            right: 0,
          ),
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: list.length,
            itemBuilder: (context, index) {
              return SingleProduct(
                image: list[index],
              );
            },
          ),
        ),
      ],
    );
  }
}






// import 'package:amazon_clone_tutorial/common/widgets/loader.dart';
// import 'package:amazon_clone_tutorial/constants/global_variables.dart';
// import 'package:amazon_clone_tutorial/features/account/services/account_services.dart';
// import 'package:amazon_clone_tutorial/features/account/widgets/single_product.dart';
// import 'package:amazon_clone_tutorial/features/order_details/screens/order_details.dart';
// import 'package:amazon_clone_tutorial/models/order.dart';
// import 'package:flutter/material.dart';

// class Orders extends StatefulWidget {
//   const Orders({Key? key}) : super(key: key);

//   @override
//   State<Orders> createState() => _OrdersState();
// }

// class _OrdersState extends State<Orders> {
//   List<Order>? orders;
//   final AccountServices accountServices = AccountServices();

//   @override
//   void initState() {
//     super.initState();
//     fetchOrders();
//   }

//   void fetchOrders() async {
//     orders = await accountServices.fetchMyOrders(context: context);
//     setState(() {});
//   }

//   @override
//   Widget build(BuildContext context) {
//     return orders == null
//         ? const Loader()
//         : Column(
//             children: [
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Container(
//                     padding: const EdgeInsets.only(
//                       left: 15,
//                     ),
//                     child: const Text(
//                       'Your Orders',
//                       style: TextStyle(
//                         fontSize: 18,
//                         fontWeight: FontWeight.w600,
//                       ),
//                     ),
//                   ),
//                   Container(
//                     padding: const EdgeInsets.only(
//                       right: 15,
//                     ),
//                     child: Text(
//                       'See all',
//                       style: TextStyle(
//                         color: GlobalVariables.selectedNavBarColor,
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//               // display orders
//               Container(
//                 height: 170,
//                 padding: const EdgeInsets.only(
//                   left: 10,
//                   top: 20,
//                   right: 0,
//                 ),
//                 child: ListView.builder(
//                   scrollDirection: Axis.horizontal,
//                   itemCount: orders!.length,
//                   itemBuilder: (context, index) {
//                     return GestureDetector(
//                       onTap: () {
//                         Navigator.pushNamed(
//                           context,
//                           OrderDetailScreen.routeName,
//                           arguments: orders![index],
//                         );
//                       },
//                       child: SingleProduct(
//                         image: orders![index].products[0].images[0],
//                       ),
//                     );
//                   },
//                 ),
//               ),
//             ],
//           );
//   }
// }