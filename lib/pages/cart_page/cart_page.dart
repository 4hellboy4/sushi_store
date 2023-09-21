import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:sushi_app/consts/color.dart';
import 'package:sushi_app/provider/cart_provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_sharp,
            color: white,
          ),
        ),
        elevation: 0,
        title: Text(
          "My Cart",
          style: TextStyle(color: white),
        ),
        centerTitle: true,
        backgroundColor: darkred,
      ),
      backgroundColor: darkred,
      body: Column(
        children: <Widget>[
          Expanded(
              child: Consumer<CartProvider>(
            builder: (context, value, child) => ListView.builder(
              itemCount: value.cart.length,
              itemBuilder: (context, index) {
                final String name = value.cart[index].food.name;
                final int amount = value.cart[index].amount;
                return Container(
                  decoration: BoxDecoration(
                    color: red,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  margin: const EdgeInsets.only(left: 20, top: 20, right: 20),
                  child: ListTile(
                    title: Text(
                      name,
                      style: GoogleFonts.dmSerifDisplay(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                    subtitle: Text(
                      "$amount* ${value.cart[index].food.price}",
                      style: TextStyle(color: white),
                    ),
                    trailing: IconButton(
                      onPressed: () => value.removeFromCart(index),
                      icon: Icon(
                        Icons.delete,
                        color: Colors.grey[300],
                      ),
                    ),
                  ),
                );
              },
            ),
          ))
        ],
      ),
    );
    // return Consumer<CartProvider>(
    //   builder: (context, value, child) => Scaffold(
    // appBar: AppBar(
    //   elevation: 0,
    //   title: const Text("My Cart"),
    //   backgroundColor: darkred,
    // ),
    //     backgroundColor: darkred,
    //     body: Column(
    //       children: [
    //         ListView.builder(
    //           scrollDirection: Axis.vertical,
    //           shrinkWrap: true,
    //           itemBuilder: (context, index) {
    //             final String name = value.cart[index].food.name;
    //             final int amount = value.cart[index].amount;
    //             return Container(
    //               decoration: BoxDecoration(
    //                 color: darkred,
    //                 borderRadius: BorderRadius.circular(10),
    //               ),
    //               margin: const EdgeInsets.only(left: 20, top: 20, right: 20),
    //               child: ListTile(
    //                 title: Text(
    //                   name,
    //                   style: GoogleFonts.dmSerifDisplay(
    //                     color: Colors.white,
    //                     fontSize: 18,
    //                   ),
    //                 ),
    //                 subtitle: Text(
    //                   amount.toString(),
    //                   style: TextStyle(color: white),
    //                 ),
    //               ),
    //             );
    //           },
    //         ),
    //       ],
    //     ),
    //   ),
    // );
  }
}
