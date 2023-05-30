import 'package:flutter/material.dart';

import "../../constants/colors.dart";


class CheckOut extends StatefulWidget {

  const CheckOut({super.key});

  @override
  State<CheckOut> createState() => _CheckOutState();
}

class _CheckOutState extends State<CheckOut> {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
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
                child: Column(
                  children: <Widget>[
                    const Row(
                      children: [
                        Icon(Icons.person_rounded),
                        SizedBox(width: 15),
                        Text(
                          "Lý Thị Hồng Cẫm Nhi",
                          style: TextStyle(
                              fontSize: 18,
                              fontFamily: AutofillHints.addressCity),
                        ),
                        Spacer(),
                        Icon(Icons.create),
                      ],
                    ),
                    const Row(
                      children: [
                        Icon(
                          Icons.phone,
                          color: Colors.green,
                        ),
                        SizedBox(width: 15),
                        Text(
                          "0193758947",
                          style: TextStyle(
                            fontSize: 18,
                            fontFamily: AutofillHints.addressCity,
                          ),
                        ),
                      ],
                    ),
                    const Row(
                      children: [
                        Icon(
                          Icons.location_pin,
                          color: Colors.red,
                        ),
                        SizedBox(width: 15),
                        Text(
                          "Ninh Kiều, Cần Thơ",
                          style: TextStyle(
                              fontSize: 18,
                              fontFamily: AutofillHints.addressCity),
                        ),
                      ],
                    ),
                    const Divider(),
                    const Row(
                      children: [
                        Text(
                          "Tổng tiền hàng: 30.01 \$",
                          style: TextStyle(
                              fontSize: 18,
                              fontFamily: AutofillHints.addressCity),
                        ),
                      ],
                    ),
                    const Divider(),
                    const Row(
                      children: [
                        Text(
                          "Phí vận chuyển: 1.05 \$",
                          style: TextStyle(
                              fontSize: 18,
                              fontFamily: AutofillHints.addressCity),
                        ),
                      ],
                    ),
                    const Divider(),
                    const Row(
                      children: [
                        Text(
                          "Tổng thanh toán: 31.06 \$",
                          style: TextStyle(
                              fontSize: 18,
                              fontFamily: AutofillHints.addressCity),
                        ),
                      ],
                    ),
                    
                    Padding(
                      padding: const EdgeInsets.only(top: 20, bottom: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          SizedBox(
                            width: 200,
                            height: 52,
                            child: FloatingActionButton.extended(
                              shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15.0)),
                              ),
                              backgroundColor: btncolor,
                              foregroundColor: Colors.white,
                              onPressed: () {},
                              label: const Text(
                                'XÁC NHẬN',
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    backgroundColor: btncolor),
                              ),
                            ),
                          )
                        ],
                       
                      ),
                    
                    ),
                    
                  ],
                ),
                
              ),
             
            ],
          ),
        ), 
      ],
    );
  }
}