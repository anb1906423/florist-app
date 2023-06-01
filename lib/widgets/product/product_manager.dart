import 'package:flutter/material.dart';

import '../../models/product.dart';

class ProductsManager with ChangeNotifier {
  Product? findById(String id) {
    try {
      return _items.firstWhere((item) => item.id == id);
    } catch (error) {
      return null;
    }
  }

  final List<Product> _items = [
    Product(
      id: 'p1',
      title: 'Hoa Tulip',
      description:
          'Hoa tulip hay còn biết đến nhiều với tên gọi là uất kim hương, có tên khoa học là Tulipa, là một chi thực vật có hoa trong họ Liliaceae. Hoa tulip có nguồn gốc từ vùng Trung Đông, hiện nay được trồng ở khắp nơi trên thế giới. ',
      price: 11.02,
      imageUrl:
          'https://rosalind.vn/wp-content/uploads/2022/09/combo-10-bong-hoa-tulip-cao-su-gia-dep-tinh-te-1024x1024.jpg',
    ),
    Product(
      id: 'p2',
      title: 'Hoa Lan',
      description:
          'Hoa lan biểu trưng cho tình yêu son sắt, thủy chung, khi ai đó dành tặng cho bạn một bó hoa lan tươi thắm thì có nghĩa họ đang biểu đạt tình cảm dạt dào, chân thành cho bạn. Loài hoa này như một lời khen dành tặng cho người yêu về trí tuệ thông minh, tấm lòng thiện lương.',
      price: 15.02,
      imageUrl:
          'https://nghethuatvabonsai.com/wp-content/uploads/2023/03/Cham-Soc-Hoa-Lan-Ho-.jpg',
    ),
    Product(
      id: 'p3',
      title: 'Hoa Ly ',
      description:
          'Hoa Ly hay còn được gọi là “Lily” từ lâu đã được mệnh danh là một loài hoa quý phái và thanh cao. Loài hoa này mang nét đẹp đơn giản, mộc mạc nhưng lại lôi cuốn ánh mắt người nhìn. Hơn nữa, hoa ly còn mang trong mình nhiều ý nghĩa biểu tượng độc đáo khác nhau.',
      price: 22.11,
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/commons/b/b7/Lilium_longiflorum.jpg',
    ),
    Product(
      id: 'p4',
      title: 'Hoa Hồng',
      description:
          'Hoa hồng tượng trưng cho tình yêu, hoa hồng với nhiều màu sắc khác nhau tượng trưng cho những ý nghĩa khác nhau của tình yêu. Hoa hồng phấn tượng trưng cho tình yêu đầu tiên, cảm động, tình yêu vĩnh cửu và tình yêu ngọt ngào.',
      price: 18.32,
      imageUrl:
          'https://vyfarm.com/wp-content/uploads/2022/11/hoa-hong-phan.jpg',
    ),
  ];
  int get itemCount {
    return _items.length;
  }

  List<Product> get items {
    return [..._items];
  }

  List<Product> get favoriteItems {
    return _items.where((item) => item.isFavorite).toList();
  }

  void updateProduct(Product product) {
    final index = _items.indexWhere((item) => item.id == product.id);
    if (index >= 0) {
      _items[index] = product;
      notifyListeners();
    }
  }

  void toggleFavoriteStatus(Product product) {
    final savedStatus = product.isFavorite;
    product.isFavorite = !savedStatus;
  }

  void deleteProduct(String id) {
    final index = _items.indexWhere((item) => item.id == id);
    _items.removeAt(index);
    notifyListeners();
  }

  void addProduct(Product product) {
    _items.add(
      product.copyWith(
        id: 'p${DateTime.now().toIso8601String()}',
      ),
    );
    notifyListeners();
  }

}
