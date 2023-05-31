
import 'package:flutter/material.dart';

import '../../models/cart.dart';
import '../dialog_utils.dart';

class CartItemCard extends StatelessWidget {
  final String productId;
  final CartItem cardItem;

  const CartItemCard({
    required this.productId,
    required this.cardItem,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: ValueKey(cardItem.id),
      background: Container(
        color: Theme.of(context).colorScheme.error,
        alignment: Alignment.centerRight,
        padding: const EdgeInsets.only(right: 20),
        margin: const EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 4,
        ),
        child: const Icon(
          Icons.delete,
          color: Colors.white,
          size: 40,
        ),
      ),

      direction: DismissDirection.endToStart,
      confirmDismiss: (direction) {
        return showConfirmDialog(
          context,
          'Do you want to remove the item from the cart?',
        );
      },
      onDismissed: (direction) {
        print("Xóa sản phẩm khỏi giỏ hàng");
      },
      // onDismissed: (direction) {
      //   context.read<CartManager>().removeItem(productId);
      // },
      child: buildItemCard(),
    );
  }

  Widget buildItemCard() {
    return Container(
      margin: EdgeInsets.all(12),
      padding: EdgeInsets.all(8),
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
          SizedBox(
            width: 90,
            child: AspectRatio(
              aspectRatio: 0.9,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Image.asset(
                    cardItem.imageUrl,
                    // width: 0,
                    // height: 0,
                    fit: BoxFit.cover,
                  ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 10, bottom: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    cardItem.title,
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
                          (cardItem.price).toStringAsFixed(2),
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
                                // color: buttonColor,
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
                                  margin:
                                      const EdgeInsets.symmetric(horizontal: 3),
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 3, vertical: 2),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(3),
                                  ),
                                  child: Text(
                                    (cardItem.quantity).toStringAsFixed(0),
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
