import 'package:e_commerce_task_philobater_samir/core/General/Theming.dart';
import 'package:e_commerce_task_philobater_samir/core/General/app_color.dart';
import 'package:e_commerce_task_philobater_samir/core/General/app_string.dart';
import 'package:e_commerce_task_philobater_samir/features/presentation/screens/App_Screens/basic_screen.dart';
import 'package:flutter/material.dart';

class customBottomSheet extends StatelessWidget {

  TextEditingController passwordController = TextEditingController();
  String password = '' ;

  @override
  Widget build(BuildContext context) {
    double _hieght = MediaQuery.of(context).size.height;
    return Padding(
      padding:
      EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      child: Container(
        height: _hieght * .3,
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                AppString.enterPhoneNum,
                style: AppTheme().textTheme.bodyMedium,
              ),
              SizedBox(
                height: 15,
              ),
              TextFormField(
                controller: passwordController,
                onChanged: (text){
                  password = text ;
                },
                cursorColor: AppColor.black,
                decoration: InputDecoration(
                    hintText: AppString.password,
                    border: InputBorder.none,
                    suffixIcon: Icon(
                      Icons.remove_red_eye_outlined,
                      color: AppColor.greyBlack,
                    ),
                    fillColor: AppColor.grey,
                    filled: true),
              ),
              SizedBox(
                height: 10,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  AppString.forgetPassword,
                  style: AppTheme()
                      .textTheme
                      .bodyMedium
                      ?.copyWith(color: AppColor.red, fontSize: 15),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: MaterialButton(
                  onPressed: () {
                    if (password == 'test@78563'){
                      Navigator.pushReplacementNamed(
                          context, basicScreen.routeName);
                    }
                    else {
                      showSnackBar('password invalid', context);

                    }
                    },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  color: AppColor.red,
                  child: Padding(
                    padding:
                    EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    child: Text(
                      AppString.verifyPassword,
                      style: AppTheme()
                          .textTheme
                          .bodyMedium
                          ?.copyWith(color: AppColor.white, fontSize: 20),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
  void showSnackBar(String text ,BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(text)));
  }
}
