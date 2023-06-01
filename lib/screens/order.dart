import 'package:flutter/material.dart';
import '../widgets/drawer.dart';
import '../widgets/checkout/checkout_detail.dart';
import '../widgets/checkout/checkout.dart';


import '../widgets/drawer.dart';

class Orders extends StatefulWidget {
  const Orders({super.key});

class CheckOutBody extends StatelessWidget {
  const CheckOutBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Đơn hàng'),
        backgroundColor: Colors.pink[100],
      ),
      drawer:  const AppDrawer(),
      body: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.only(top: 15, left: 10, right: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("DANH SÁCH ĐƠN HÀNG", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, fontFamily: AutofillHints.addressCity),)
                ],
              ),
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 2,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Container(
                    padding: const EdgeInsets.all(10),
                    margin: const EdgeInsets.only(
                      top: 15,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(
                          color: Color.fromARGB(255, 208, 207, 207),
                          offset: Offset(0.0, 3.0),
                        ),
                      ],
                    ),
                    child: const Column(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(bottom: 10),
                          child: Row(
                            children: <Widget>[
                              Text(
                                "Hoa hồng nữ hoàng",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: AutofillHints.addressCity),
                              ),
                              Spacer(),
                              Text(
                                "Hoàn thành",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.green,
                                    fontFamily: AutofillHints.addressCity),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          children: <Widget>[
                            Text(
                              "23/5/2023 2:05:05 pm",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: AutofillHints.addressCity),
                            ),
                            Spacer(),
                            Text(
                              "31.06\$",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: AutofillHints.addressCity),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              )
            ],
          ),
        ),
=======
        title: const Text('ĐẶT HÀNG'),
        backgroundColor: Colors.pink.shade100,
>>>>>>> 2b6fd0574cd5aa2413690df1cbf7981bc8bfcf9d
      ),
     drawer:  const AppDrawer(),
     body: const SingleChildScrollView(
    
       child: Column(
          children: <Widget>[
            CheckOut(),
            CheckOutDetail()
          ],
       ),
     )
    );
  }
}