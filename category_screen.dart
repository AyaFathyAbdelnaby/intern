import 'package:flutter/material.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar:AppBar(title: Text("data")) ,
      body: Column(
        children: [
          const SizedBox(height: 36),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 22),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Icon(Icons.arrow_back), Icon(Icons.favorite_border)],
            ),
          ),
          Image.network(
              'https://atlas-content-cdn.pixelsquid.com/stock-images/sofa-single-ywYZBl8-600.jpg'),
          const SizedBox(height: 21),
          Padding(
            padding: const EdgeInsets.fromLTRB(24, 0, 26, 0),
            child: Row(
              children: [
                const Text(
                  'Room Sofa',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 32,
                      fontWeight: FontWeight.w600),
                ),
                const Spacer(),
                Container(
                  decoration: BoxDecoration(
                      color: const Color(0xffE7E7E7),
                      borderRadius: BorderRadius.circular(5)),
                  child: const Row(
                    children: [
                      Icon(Icons.remove),
                      SizedBox(width: 5),
                      Text('1'),
                      SizedBox(width: 5),
                      Icon(Icons.add),
                    ],
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(26, 14, 0, 14),
            child: Row(
              children: [
                Container(
                  width: 15,
                  height: 15,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Color(0xff7993AE)),
                ),
                const SizedBox(width: 5),
                Container(
                  width: 15,
                  height: 15,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromARGB(255, 180, 104, 221)),
                ),
                const SizedBox(width: 5),
                Container(
                  width: 15,
                  height: 15,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Color(0xff363f0c)),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Text(
              "Drawing Room Wooden Sofa Set is solid wooden sofa set which you"
              "can contrast the cushion of any color. The good sight caused ue to the furniture help us relax for a longer time. ",
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xff7993AE)),
            onPressed: () {},
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 38, vertical: 15),
              child: Text('Add to cart'),
            ),
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
