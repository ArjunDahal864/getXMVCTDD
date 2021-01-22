import 'package:flutter/material.dart';
import 'package:foody/utils/colors.dart';

class OTPInputField extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 40,
          child: TextFormField(
            maxLength: 1,
            maxLengthEnforced: true,
            textInputAction: TextInputAction.next,
            
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              isDense: true,
              
              focusColor: AppColor.primaryWhite,
              border: InputBorder.none,
              
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 16,horizontal: 14),
              fillColor: AppColor.primaryBlack.withOpacity(.2),
              filled: true,
              
              focusedBorder: InputBorder.none,
            ),
            style: TextStyle(color: AppColor.primaryBlack, fontSize: 18.0),
          ),
        ),
      ],
    );
  }
}
