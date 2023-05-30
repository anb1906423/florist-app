import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../models/cart.dart';


class CartItem extends StatelessWidget {
  final Cart flower;
  const CartItem({super.key, required this.flower});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
          border: Border.all(color: Colors.white),
          boxShadow: const [
            BoxShadow(
              blurRadius: 8,
              offset: Offset(0, 4),
              color: Colors.grey,
            ),
          ]),
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.all(15),
            child: Image.asset(
              flower.imageUrl,
              width: 80,
              height: 80,
              fit: BoxFit.cover,
              
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 10, bottom: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    flower.title,
                    style: const TextStyle(
                        fontSize: 18, color: Color.fromARGB(255, 65, 54, 54)),
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                      top: 10,
                    ),
                    child: Row(
                      children: [
                        Text(
                          (flower.price).toStringAsFixed(2),
                          style: const TextStyle(
                            fontSize: 15,
                            color: Colors.pinkAccent,
                          ),
                        ),
                        const Text(
                          "\$",
                          style:
                              TextStyle(color: Colors.pinkAccent, fontSize: 15),
                        ),
                        const Spacer(),
                        Container(
                            padding: const EdgeInsets.all(3),
                            decoration: BoxDecoration(
                                color: buttonColor,
                                borderRadius: BorderRadius.circular(20)),
                            child: Row(
                              children: [
                                InkWell(
                                    onTap: () {},
                                    child: const Icon(
                                      Icons.remove,
                                      color: Color.fromARGB(255, 211, 36, 91),
                                      size: 16,
                                    )),
                                Container(
                                  margin: const EdgeInsets.symmetric(horizontal: 3),
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 3, vertical: 2),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(3),
                                    ),
                                  child: Text(
                                    (flower.quantity).toStringAsFixed(0),
                                    style: const TextStyle(
                                        color: Colors.black, fontSize: 16),
                                  ),
                                ),
                                InkWell(
                                    onTap: () {},
                                    child: const Icon(
                                      Icons.add,
                                      color: Color.fromARGB(255, 211, 36, 91),
                                      size: 16,
                                    )),
                              ],
                            )),
                        const SizedBox(
                          width: 50,
                        ),
                        const Icon(
                          CupertinoIcons.delete_solid,
                          color: Colors.pinkAccent,
                          size: 20.0,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
    
  }
}