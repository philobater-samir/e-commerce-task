import 'package:e_commerce_task_philobater_samir/core/General/Theming.dart';
import 'package:e_commerce_task_philobater_samir/features/data/Goods_Model.dart';
import 'package:flutter/material.dart';

class customListViewWidget extends StatelessWidget {
  GoodsModel model ;
  customListViewWidget ({required this.model});

  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;
    return Container(
      height: _height * .3,
      width: _width * .2,
      child: ListTile(
        title: Image.asset(
        model.imagePath,
        height: _height * .1,
        width: _width * .1,
        ),
        subtitle: Text(
          'Tools',
          style: AppTheme()
              .textTheme
              .bodyMedium
              ?.copyWith(fontSize: 15),
        ),
      ),
    );
  }
}
