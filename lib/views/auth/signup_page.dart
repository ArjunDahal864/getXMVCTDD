import 'package:flutter/material.dart';
import 'package:foody/utils/colors.dart';
import 'package:foody/views/auth/otp_page.dart';
import 'package:foody/widgets/widgets.dart';
import 'package:get/get.dart';

class SignUp extends StatelessWidget {
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
                    "Let's Start ",
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
                    height: Get.height / 1.5,
                    child: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Sign Up",
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
                                  inputHint: "John Doe",
                                  inputType: TextInputType.text,

                                  isSecured: false,
                                ),
                                SizedBox(height: 20),
                                TextInputField(
                                  inputHint: "+9779840....",
                                  inputType: TextInputType.number,


                                  isSecured: false,
                                ),
                                SizedBox(height: 20),
                                TextInputField(
                                  inputHint: "johndoe@gmail.com",
                                  inputType: TextInputType.emailAddress,

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
                          InkWell(
                            onTap: (){
                              Get.back();
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Already Have an Account ?",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                      color: AppColor.primaryRed),
                                ),
                                Text(
                                  "Sign In",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                      color: AppColor.primaryBlack),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  right: 50,
                  bottom: Get.height / 1.589,
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
                        Get.to(OTPPage());
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
