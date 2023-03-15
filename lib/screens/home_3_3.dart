// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class home_3_3 extends StatelessWidget {
  const home_3_3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Image.asset('assets/images/home2/tryplore_logo.png'),
        actions: [
          SizedBox(
            height: 70,
            width: 70,
            child: Image.asset(
              'assets/images/home/trial_room_logo.png',
            ),
          ),
          IconButton(
            icon: const Icon(
              Icons.location_on,
              color: Colors.black,
            ),
            tooltip: 'Open shopping cart',
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(
              Icons.sort_outlined,
              color: Colors.black,
            ),
            tooltip: 'Search by Filter',
            onPressed: () {},
          ),
        ],
      ),
      body: GridView.builder(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemBuilder: (context, index) {
          return buildImageCard(index);
        },
        itemCount: 40,
      ),
    );
  }

  Widget buildImageCard(int index) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Container(
        margin: EdgeInsets.all(8),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.network(
            'https://source.unsplash.com/random?sig=$index',
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }

// class CustomContainer extends StatelessWidget {
//   final double? c_width, c_height;
//   final String? img_path;
//   final Color? container_color;
//   const CustomContainer({
//     Key? key,
//     this.c_height,
//     this.img_path,
//     this.c_width,
//     this.container_color,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: MediaQuery.of(context).size.width,
//       height: c_height,
//       child: Image.asset(img_path!),
//       color: container_color,
//     );
//   }
// }
}
