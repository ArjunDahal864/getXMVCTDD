import 'package:flutter/material.dart';
import 'package:foody/controller/product_controller.dart';
import 'package:foody/utils/colors.dart';
import 'package:foody/widgets/custom_button.dart';
import 'package:foody/widgets/product_card.dart';
import 'package:get/get.dart';
import 'package:get/instance_manager.dart';

class ProductsPage extends StatelessWidget {
  final ProductController productController = Get.put(ProductController());
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Obx(
        () {
          if (productController.fetching.value) {
            return Center(
                child: Container(
              child: CircularProgressIndicator(),
            ));
          } else
            return PageView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return SingleChildScrollView(
                  child: Column(
                    children: [
                      ProductCard(
                        product: productController.products[index],
                      ),
                      SizedBox(height: 10,),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 10,
                            height: 10,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: AppColor.primaryLignRed
                            ),
                          ),
                          SizedBox(width: 10,),
                           Container(
                            width: 10,
                            height: 10,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: AppColor.primaryLignRed
                            ),
                          ),
                          SizedBox(width: 10,),
                           Container(
                            width: 10,
                            height: 10,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: AppColor.primaryLignRed
                            ),
                          ),
                          SizedBox(width: 10,),
                           
                        ],
                      ),
                      SizedBox(height: 25),
                      Text(
                        productController.products[index].description,
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: AppColor.primaryBlack),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                     
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CustomButton(),
                      ),
                    ],
                  ),
                );
              },
              itemCount: productController.products.length,
            );
        },
      ),
    );
  }
}
