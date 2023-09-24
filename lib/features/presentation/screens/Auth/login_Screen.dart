import 'package:e_commerce_task_philobater_samir/core/General/app_color.dart';
import 'package:e_commerce_task_philobater_samir/core/General/app_string.dart';
import 'package:e_commerce_task_philobater_samir/core/General/Theming.dart';
import 'package:e_commerce_task_philobater_samir/features/presentation/widgets/custom_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class loginScreen extends StatefulWidget {
  static const String routeName = AppString.loginRoute;

  @override
  State<loginScreen> createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {
  TextEditingController phoneController = TextEditingController();

  String countryDial = '+1';
  String phone = '8980865467';

  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColor.loginBackground,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: 20.0,
              ),
              child: Text(
                AppString.login,
                style: AppTheme().textTheme.bodyLarge,
              ),
            ),
            SizedBox(
              height: _height * .01,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text(
                AppString.welcomeBack,
                style: AppTheme()
                    .textTheme
                    .bodySmall
                    ?.copyWith(fontSize: 25, color: AppColor.white),
              ),
            ),
            SizedBox(
              height: _height * .04,
            ),
            Container(
              height: _height * .7,
              width: _width,
              decoration: BoxDecoration(
                color: AppColor.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(80),
                    topRight: Radius.circular(80)),
              ),
              child: Padding(
                padding: EdgeInsets.only(top: 50, right: 30, left: 30),
                child: Column(
                  children: [
                    Container(
                      height: _height * .19,
                      width: _width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Card(
                        elevation: 20,
                        child: Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                AppString.enterPhoneNum,
                                style: AppTheme().textTheme.bodyMedium,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              IntlPhoneField(
                                controller: phoneController,
                                initialValue: 'IN',
                                onCountryChanged: (country) {
                                  setState(() {
                                    countryDial = '+' + country.dialCode;
                                  });
                                },
                                showDropdownIcon: false,
                                style: AppTheme().textTheme.bodySmall,
                                cursorColor: Colors.black,
                                dropdownIconPosition: IconPosition.trailing,
                                dropdownIcon: Icon(
                                  Icons.arrow_drop_down_sharp,
                                  color: AppColor.black,
                                ),
                                initialCountryCode: 'IN',
                                decoration: InputDecoration(
                                  hintText: AppString.phoneNum,
                                  border: InputBorder.none,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    MaterialButton(
                      onPressed: () {
                        if(phone == '8980865467'){
                          openBottomSheet(context);
                        }
                        else {
                          showSnackBar('phone number is wrong');
                        }
                      },
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      color: Colors.red,
                      child: Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 70, vertical: 20),
                        child: Text(
                          AppString.proceed,
                          style: AppTheme()
                              .textTheme
                              .bodyMedium
                              ?.copyWith(color: AppColor.white, fontSize: 20),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void openBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      elevation: 10,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30))),
      builder: (context) {
        return customBottomSheet();
      },
    );
  }

  void showSnackBar(String text) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(text)));
  }
}
