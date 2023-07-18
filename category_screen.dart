import 'package:flutter/material.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar:AppBar(title: Text("data")) ,
      body: Column(
        children: [
          SizedBox(
            height: 36
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Icon(Icons.arrow_back), Icon(Icons.favorite_border)],
            ),
          ),
          Image.network(
              'https://atlas-content-cdn.pixelsquid.com/stock-images/sofa-single-ywYZBl8-600.jpg'),
          SizedBox(
            height: 21
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(24, 0, 26, 0),
            child: Row(
              children: [
                Text('Room Sofa'),
                Spacer(),
                Container(decoration: BoxDecoration(color:Color(0xffE7E7E7),borderRadius: BorderRadius.circular(5)),
                  child: Row(
                    children: [
                      Icon(Icons.remove),
                      Text('1'),
                      Icon(Icons.add),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
