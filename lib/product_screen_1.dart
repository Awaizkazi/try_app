import 'package:flutter/material.dart';
import 'package:try_app/screens/product_details.dart';

class ProductScreen1 extends StatefulWidget {
  const ProductScreen1({super.key});

  @override
  State<ProductScreen1> createState() => _ProductScreen1State();
}

class _ProductScreen1State extends State<ProductScreen1> {
  final List<Map<String, dynamic>> gridMap = [
    {
      "title": 'white sneaker with adidas logo',
      'price': '\$255',
      'images':
          'https://rukminim1.flixcart.com/image/612/612/xif0q/kids-shoe/i/v/n/1-fz0106-adidas-kids-original-imagg7qbz5qydjgu.jpeg?q=70'
    },
    {
      "title": 'Black jeans with Blue Strips',
      'price': '\$355',
      'images': 'https://m.media-amazon.com/images/I/712+HeEUo0L._UX385_.jpg'
    },
    {
      "title": 'Red Shoes with balck Stripes',
      'price': '\$245',
      'images':
          'https://cdn.shopify.com/s/files/1/0037/8811/1918/products/01_a7168499-0ce8-464d-a449-da2193414297_1024x1024.jpg?v=1677236723'
    },
    {
      "title": 'Gamma Shoes with Beta Brand',
      'price': '\$255',
      'images':
          'https://rukminim1.flixcart.com/image/832/832/l4ei1e80/shoe/y/t/v/6-f-8001-02-03-stl-zixer-gamma-brown-original-imagfb6kugxjcvbh.jpeg?q=70'
    },
    {
      "title": 'iQOO Neo 7 5G (Frost Blue, 8GB RAM, 128GB Storage)',
      'price': 'Rs.29,999',
      'images':
          'https://i.gadgets360cdn.com/products/large/iqoo-neo-7-5g-db-709x800-1676531196.jpg'
    },
    {
      "title": 'Oppo Enco Buds Bluetooth True Wireless',
      'price': 'Rs. 1,699',
      'images': 'https://m.media-amazon.com/images/I/51+zP3-RQXL._SL1500_.jpg'
    },
    {
      "title": 'Oppo Enco Buds Bluetooth True Wireless',
      'price': 'Rs. 1,699',
      'images': 'https://m.media-amazon.com/images/I/51+zP3-RQXL._SL1500_.jpg'
    },
    {
      "title": 'Oppo Enco Buds Bluetooth True Wireless',
      'price': 'Rs. 1,699',
      'images': 'https://m.media-amazon.com/images/I/51+zP3-RQXL._SL1500_.jpg'
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back_ios, color: Colors.black),
        ),
        title: Text(
          'Back',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.favorite_border_outlined, color: Colors.black),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.shopping_bag_outlined, color: Colors.black),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.sort, color: Colors.black),
          ),
        ],
      ),
      body: SingleChildScrollView(
        reverse: true,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: Colors.amber,
              width: MediaQuery.of(context).size.width,
              height: 220,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Women\'s Clothing',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.tune_outlined),
                ),
              ],
            ),
            Text(
              '8579 items Found',
              style: TextStyle(color: Colors.grey, fontSize: 15),
            ),
            ProductDetailsGrid(gridMap: gridMap),
          ],
        ),
      ),
    );
  }
}

class ProductDetailsGrid extends StatelessWidget {
  const ProductDetailsGrid({
    super.key,
    required this.gridMap,
  });

  final List<Map<String, dynamic>> gridMap;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 12.0,
          mainAxisSpacing: 10,
          mainAxisExtent: 300),
      itemCount: gridMap.length,
      itemBuilder: (context, index) {
        return Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.0),
                color: Colors.amberAccent.shade100,
                border: Border.all(color: Colors.blueAccent),
              ),
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16.0),
                      topRight: Radius.circular(16.0),
                    ),
                    child: Image.network(
                      // TODO  By using these we will call the varibles values by Index Wise starts from 0 to n
                      "${gridMap.elementAt(index)['images']}",
                      height: 170,
                      width: MediaQuery.of(context).size.width,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "${gridMap.elementAt(index)['title']}",
                    style: Theme.of(context).textTheme.bodyMedium!.merge(
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 17),
                        ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "${gridMap.elementAt(index)['price']}",
                    style: Theme.of(context).textTheme.bodySmall!.merge(
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
                        ),
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
