import 'package:e_commerce_task_philobater_samir/core/General/app_color.dart';
import 'package:e_commerce_task_philobater_samir/core/General/app_string.dart';
import 'package:e_commerce_task_philobater_samir/core/General/Theming.dart';
import 'package:e_commerce_task_philobater_samir/features/data/Goods_Model.dart';
import 'package:e_commerce_task_philobater_samir/features/presentation/widgets/custom_gridview_widget.dart';
import 'package:e_commerce_task_philobater_samir/features/presentation/widgets/custom_listview_widget.dart';
import 'package:flutter/material.dart';

class homeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;
    final double itemHeight = (size.height - kToolbarHeight - _height * .1) / 2;
    final double itemWidth = size.width / 2;
    return Scaffold(
      backgroundColor: AppColor.white,
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 20.0, left: 20),
                      child: Stack(children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                              'assets/images/download.jpg',
                              fit: BoxFit.fill,
                              width: _width,
                            )),
                        Padding(
                          padding:
                              EdgeInsets.only(top: _height * .05, left: 20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '30% Discound',
                                style: TextStyle(
                                    color: Colors.grey[300], fontSize: 15),
                              ),
                              SizedBox(
                                width: _width * .09,
                                child: Divider(
                                  height: 6,
                                  endIndent: 1,
                                  color: AppColor.red,
                                  thickness: 1,
                                ),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                'Best Hand Tools \nCollection',
                                style: TextStyle(
                                    color: AppColor.white, fontSize: 25),
                              ),
                              SizedBox(
                                height: _height * .03,
                              ),
                              MaterialButton(
                                onPressed: () {},
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                color: Colors.red,
                                child: Text(
                                  'Shop Now',
                                  style: AppTheme()
                                      .textTheme
                                      .bodyMedium
                                      ?.copyWith(
                                          color: AppColor.white, fontSize: 15),
                                ),
                              ),
                            ],
                          ),
                        )
                      ]),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Text(
                        AppString.categories,
                        style: AppTheme()
                            .textTheme
                            .bodyMedium
                            ?.copyWith(fontSize: 20),
                      ),
                    ),
                    SizedBox(
                      height: _height * .2,
                      child: Padding(
                        padding: EdgeInsets.only(left: 20.0),
                        child: ListView.builder(
                          itemCount: GoodsModel.toolsImages.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return customListViewWidget(
                                model: GoodsModel.toolsImages[index]);
                          },
                        ),
                      ),
                    ),
                  ]),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              width: _width,
              decoration: BoxDecoration(
                  color: AppColor.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30))),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Top Picks',
                      style: AppTheme()
                          .textTheme
                          .bodyMedium
                          ?.copyWith(fontSize: 20),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    GridView.count(
                        childAspectRatio: (itemWidth / itemHeight),
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        crossAxisCount: 2,
                        children: List.generate(GoodsModel.toolsImages.length,
                            (index) {
                          return customGridviewWidget(
                              model: GoodsModel.toolsImages[index]);
                        }))
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
