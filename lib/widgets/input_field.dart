import 'package:flutter/material.dart';
import 'package:foody/utils/colors.dart';

class TextInputField extends StatelessWidget {
  final String inputHint;
  final bool isSecured;

  const TextInputField({Key key, @required this.inputHint, @required this.isSecured})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextFormField(
            decoration: InputDecoration(
              hintText: inputHint,
              isDense: true,
              suffixIcon: isSecured ? Icon(Icons.visibility) : null,
              focusColor: AppColor.primaryWhite,
              border: UnderlineInputBorder(borderSide: BorderSide(color: AppColor.primaryBlack,)),
              contentPadding: const EdgeInsets.symmetric(vertical: 16,horizontal: 16),
              fillColor: AppColor.primaryBlack.withOpacity(.2),
              filled: false,
              focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: AppColor.primaryBlack,)),
            ),
            style: TextStyle(color: AppColor.primaryBlack,fontSize: 18.0),
          ),
        )
      ],
    );
  }
}
