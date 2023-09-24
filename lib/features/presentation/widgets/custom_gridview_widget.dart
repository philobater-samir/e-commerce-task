import 'package:e_commerce_task_philobater_samir/features/data/Goods_Model.dart';
import 'package:flutter/material.dart';

class customGridviewWidget extends StatelessWidget {
  GoodsModel model;
  customGridviewWidget({required this.model});
  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(color: Colors.grey, blurRadius: 4, spreadRadius: 2)
          ],
          color: Colors.white),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
                child: Image.asset(
              model.imagePath,
              height: _height * .12,
            )),
            SizedBox(
              height: 10,
            ),
            Text(
              'tool',
              overflow: TextOverflow.ellipsis,
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Stack(
                  alignment: Alignment.center,
                    children: [
                  Text(
                    '₹ 950',
                    style: TextStyle(color: Colors.grey),
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(
                    width: 50,
                    child: Divider(
                      color: Colors.grey,
                      height: 3,
                      thickness: 1,
                    ),
                  ),
                ]),
                SizedBox(
                  width: 10,
                ),
                Text(
                  '₹ 840',
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '12%Off',
                  style: TextStyle(color: Colors.red),
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(width: 10),
                Container(
                  color: Colors.green,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '3.5',
                          style: TextStyle(color: Colors.white),
                          overflow: TextOverflow.ellipsis,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 10),
            Align(
              alignment: Alignment.bottomCenter,
              child: TextButton(
                onPressed: () {},
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
                  child: Text(
                    'Buy Now',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.red)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
