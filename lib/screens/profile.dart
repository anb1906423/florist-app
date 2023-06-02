import 'package:florist_app/screens/home.dart';
import 'package:florist_app/widgets/black_line.dart';
import 'package:flutter/material.dart';

import '../widgets/drawer.dart';
import '../widgets/profile/avatar.dart';
import 'update_profile.dart';

class ProfileScreen extends StatelessWidget {
  static const routeName = '/profile';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Trang cá nhân'),
        backgroundColor: Colors.pink[100],
      ),
      drawer: const AppDrawer(),
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
                      fontSize: 21,
                    ),
                  ),
                ),
              ),
              Container(
                width: 350,
                height: 250,
                padding: EdgeInsets.all(13.0),
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
                                fontWeight: FontWeight.bold, fontSize: 21),
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
                                    fontSize: 21,
                                  ),
                                ),
                              ),
                            ),
                          )
                        ]),
                  ),
                  blackLineWidget(),
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
    return Row(
      children: [
      Padding(
          padding: EdgeInsets.only(top: 10, bottom: 10),
          child: Text(
            field,
            style: TextStyle(fontSize: 18),
          )),
      Text(
        value,
        style: TextStyle(fontSize: 18),
      ),
    ]);
  }
}
