import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:foody/controller/fav_controller.dart';
import 'package:foody/model/product_model.dart';
import 'package:foody/utils/colors.dart';
import 'package:get/get.dart';

class ProductCard extends StatelessWidget {
  final FavouriteContoller favContoller = Get.put(FavouriteContoller());
  final Product product;

  ProductCard({Key key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: Get.height / 1.5,
          width: Get.width,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
            borderRadius: new BorderRadius.only(
              bottomLeft: const Radius.circular(40.0),
              bottomRight: const Radius.circular(40.0),
            ),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: CachedNetworkImageProvider(product.imageLink),
            ),
          ),
        ),
        Positioned(
          bottom: 15,
          left: 15,
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(product.name,
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w700,
                        color: AppColor.primaryBlack)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      '\$ ',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: AppColor.primaryBlack),
                    ),
                    Text(
                      product.price,
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: AppColor.primaryBlack),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Obx(
          () => Positioned(
            bottom: 15,
            right: 15,
            child: IconButton(
              onPressed: (){
                favContoller.isFav.value = !favContoller.isFav.value;
              },
              icon: Icon(
                !favContoller.isFav.value
                    ? Icons.favorite_rounded
                    : Icons.favorite_outline_rounded,
                color: AppColor.primaryRed,
                size: 45,
              ),
            ),
          ),
        )
      ],
    );
  }
}
