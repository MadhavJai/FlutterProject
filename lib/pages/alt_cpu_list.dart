import 'package:flutter/material.dart';
import '../models/product.dart';
import '../widgets/product_item.dart';

class CpuProductsScreen extends StatelessWidget {
  final List<Product> cpuProducts = [
    Product(
      id: 'p1',
      title: 'Intel Core i5-9400F',
      description: '6 Cores 6 Threads',
      price: 299.99,
      imageUrl:
          'https://cdn.pcpartpicker.com/static/forever/images/product/3b2d769c28b9890779f87a7568887dfc.256p.jpg',
    ),
    Product(
      id: 'p2',
      title: 'AMD Ryzen 5 3600X',
      description: '6 Cores 12 Threads',
      price: 349.99,
      imageUrl:
          'https://c1.neweggimages.com/ProductImage/19-113-568-V11.jpg',
    ),
    Product(
      id: 'p3',
      title: 'Intel Core i7-8700K',
      description: '6 Cores 12 Threads',
      price: 399.99,
      imageUrl:
          'https://www.intel.com/content/dam/products/hero/foreground/processor-box-8th-gen-core-i7-unlocked-1x1.png',
    ),
    Product(
      id: 'p4',
      title: 'AMD Ryzen 5 2400G',
      description: '4 Cores 8 Threads',
      price: 149.99,
      imageUrl:
          'https://i.pcmag.com/imagery/reviews/03AOvinr2UZyU9zwq2zTt4Z-23.fit_scale.size_1028x578.v_1569481995.png',
    ),
    Product(
      id: 'p4',
      title: 'Intel Core i9-9900K',
      description: '8 Cores 16 Threads',
      price: 899.99,
      imageUrl:
          'https://c1.neweggimages.com/ProductImage/19-117-957-V03.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CPU'),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(10.0),
        itemCount: cpuProducts.length,
        itemBuilder: (ctx, i) => ProductItem(cpuProducts[i].id, cpuProducts[i].title, cpuProducts[i].imageUrl),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
        childAspectRatio: 3/2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10),
      ),
    );
  }
}