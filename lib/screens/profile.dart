
import 'package:flutter/material.dart';


import '../widgets/profile/avatar.dart';
import 'update_profile.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Trang cá nhân'),
        backgroundColor: Colors.pink[100],
      ),
      body: Container(
        padding: EdgeInsets.only(top: 24, bottom: 16),
        child: Center(
          child: Column(
            children: [
              buildAvatarWidget(),
              Container(
                child: Padding(
                  padding: EdgeInsets.only(top: 16, bottom: 28),
                  child: const Text(
                    "FullName",
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
              Container(
                width: 318,
                padding: EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: Column(children: [
                  Container(
                    padding: EdgeInsets.only(bottom: 8),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Thông tin cá nhân",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                          MouseRegion(
                            cursor: SystemMouseCursors.click,
                            child: Material(
                              color: Colors.transparent,
                              child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          UpdateProfileScreen(), // Thay NewPage() bằng màn hình bạn muốn chuyển đến
                                    ),
                                  );
                                },
                                child: Text(
                                  'Chỉnh sửa',
                                  style: TextStyle(
                                    color: Colors.blue,
                                    decoration: TextDecoration.none,
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                            ),
                          )
                        ]),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 8),
                    height: 1.0,
                    color: Colors.black38,
                  ),
                  Column(
                    children: [
                      infoItemMothod("Họ và tên: ", "Lê Văn Bưởi"),
                      infoItemMothod("Số điện thoại: ", "0819222273"),
                      infoItemMothod("Email: ", "email@gmail.com"),
                      infoItemMothod("Địa chỉ: ", "Cái Răng, Cần Thơ"),
                    ],
                  ),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Row infoItemMothod(field, value) {
    return Row(children: [
      Padding(
          padding: EdgeInsets.only(top: 6, bottom: 6),
          child: Text(
            field,
            style: TextStyle(fontSize: 13),
          )),
      Text(
        value,
        style: TextStyle(fontSize: 13),
      ),
    ]);
  }
}

