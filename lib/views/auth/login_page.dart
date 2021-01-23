import 'package:flutter/material.dart';
import 'package:foody/controller/login_controller.dart';
import 'package:foody/utils/colors.dart';
import 'package:foody/views/auth/auth_pages.dart';
import 'package:foody/views/auth/signup_page.dart';
import 'package:foody/views/home/home_page.dart';
import 'package:foody/widgets/widgets.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
  final LoginController controller = Get.put(LoginController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Stack(
              children: [
                Container(
                  height: Get.height,
                  width: Get.width,
                  color: AppColor.primaryDeepRed.withOpacity(.9),
                ),
                Positioned(
                  top: 80,
                  left: 18,
                  child: Text(
                    "Welcome \n Back ",
                    style:
                        TextStyle(color: AppColor.primaryWhite, fontSize: 45),
                  ),
                ),
                Positioned(
                  bottom: .01,
                  child: Container(
                    decoration: BoxDecoration(
                        color: AppColor.primaryWhite,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(35),
                            topRight: Radius.circular(35))),
                    width: Get.width,
                    height: Get.height / 2,
                    child: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Sign in",
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Column(
                              children: [
                                TextInputField(
                                  inputHint: "+9779840....",
                                  inputType: TextInputType.number,
                                  isSecured: false,
                                ),
                                SizedBox(height: 20),
                                TextInputField(
                                  inputHint: "*******",
                                  inputType: TextInputType.text,
                                  isSecured: true,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              InkWell(
                                onTap: () {
                                  Get.to(ForgotPasswordPage());
                                },
                                child: Text(
                                  "forgot password ?",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                      color: AppColor.primaryRed),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  Get.to(SignUp());
                                },
                                child: Text(
                                  "Sign Up",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                      color: AppColor.primaryBlack),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  right: 50,
                  bottom: Get.height / 2.17,
                  child: Container(
                    height: 70,
                    width: 70,
                    child: FloatingActionButton(
                      backgroundColor: AppColor.primaryDeepRed,
                      hoverElevation: 5,
                      elevation: 5,
                      mini: false,
                      child: Icon(
                        Icons.arrow_forward,
                        size: 40,
                      ),
                      onPressed: () {
                        // controller.refresh();
                        Get.to(HomePage());
                      },
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
