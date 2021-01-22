import 'package:flutter/material.dart';
import 'package:foody/utils/colors.dart';
import 'package:foody/widgets/widgets.dart';
import 'package:get/get.dart';

class ForgotPasswordPage extends StatelessWidget {
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
                    "Reset \n Password ",
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
                            "Recover Account",
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
                                  isSecured: false,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
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
                      onPressed: () {},
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