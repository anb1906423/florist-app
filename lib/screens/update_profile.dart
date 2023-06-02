
import 'package:florist_app/widgets/profile/input_util.dart';
import 'package:flutter/material.dart';

import '../widgets/profile/avatar.dart';

class UpdateProfileScreen extends StatefulWidget {
  @override
  State<UpdateProfileScreen> createState() => _UpdateProfileScreenState();
}

class _UpdateProfileScreenState extends State<UpdateProfileScreen> {
  // File _image;

  // Future<void> _pickImage() async {
  //   final picker = ImagePicker();
  //   final pickedImage = await picker.getImage(source: ImageSource.gallery);

  //   setState(() {
  //     if (pickedImage != null) {
  //       _image = File(pickedImage.path);
  //       // Gọi hàm xử lý upload ảnh tại đây
  //       _uploadImage(_image);
  //     }
  //   });
  // }

  // Future<void> _uploadImage(File image) async {
  //   // Xử lý upload ảnh tại đây
  //   // ...
  // }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cập nhật thông tin cá nhân'),
        backgroundColor: Colors.pink[100],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            width: 303,
            padding: EdgeInsets.only(top: 24, bottom: 16),
            child: Center(
              child: Column(children: [
                buildAvatarWidget(),
                Container(
                    padding: EdgeInsets.only(top: 24, bottom: 16),
                    child: Column(
                      children: [
                        InputUtil.buildInput("Họ và tên", "Họ và tên",
                            value: "", disabled: false),
                        InputUtil.buildInput("Số điện thoại", "Số điện thoại",
                            value: "", disabled: false),
                        InputUtil.buildInput("Email", 'Email',
                            value: "", disabled: true),
                        InputUtil.buildInput("Địa chỉ", "Địa chỉ",
                            value: "", disabled: false),
                      ],
                    )),
                Container(
                  width: double.infinity,
                  height: 8,
                ),
                Container(
                  child: Container(
                    width: double.infinity,
                    height: 56,
                    decoration: BoxDecoration(
                      color: Color(0xFFF5CCCC), // Màu nền
                      borderRadius:
                          BorderRadius.circular(10), // Độ cong của góc
                    ),
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "Lưu",
                        style: TextStyle(color: Colors.white, fontSize: 19),
                      ),
                    ),
                  ),
                ),
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
