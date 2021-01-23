import 'package:flutter/material.dart';
import 'package:foody/controller/buy_controller.dart';
import 'package:foody/utils/colors.dart';
import 'package:get/get.dart';

class CustomButton extends StatelessWidget {
  final BuyButtonController buttonController = Get.put(BuyButtonController());
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => InkWell(
        onTap: () {
          buttonController.bought.value = !buttonController.bought.value;
        },
        child: Row(
          children: [
            Expanded(
              child: Container(
                height: 65,
                width: Get.width,
                decoration: BoxDecoration(
                    color: buttonController.bought.value
                        ? AppColor.primaryDeepRed
                        : null,
                    border: !buttonController.bought.value
                        ? Border.all(color: AppColor.primaryDeepRed)
                        : null,
                    borderRadius: BorderRadius.circular(8)),
                child: Center(
                  child: ! buttonController.bought.value
                        ? Text("Added To Cart",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w700,fontSize: 25)):Text("Add To Cart",
                      style: TextStyle(
                          color: AppColor.primaryWhite, fontWeight: FontWeight.w700,fontSize: 25)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
