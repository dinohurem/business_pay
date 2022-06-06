import 'package:business_pay/size_config.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String text;
  final TextEditingController? controller;
  const CustomTextFormField({
    Key? key,
    required this.text,
    this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: SizeConfig.safeBlockHorizontal! * 5,
      ),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: Colors.lightBlue,
            width: SizeConfig.safeBlockHorizontal! * 0.3,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(SizeConfig.safeBlockHorizontal! * 2.5),
          ),
        ),
        child: TextFormField(
          controller: controller,
          obscureText: true,
          decoration: InputDecoration(
            hintText: text,
            border: InputBorder.none,
            contentPadding:
                EdgeInsets.only(left: SizeConfig.safeBlockHorizontal! * 5),
            hintStyle: TextStyle(
              color: Colors.grey[400],
              fontWeight: FontWeight.bold,
            ),
          ),
          keyboardType: text == 'Password'
              ? TextInputType.visiblePassword
              : TextInputType.emailAddress,
          validator: (value) {
            if (value!.isEmpty) {
              return text == 'Password'
                  ? 'Please enter a password.'
                  : 'Please enter an email.';
            }
            return '';
          },
        ),
      ),
    );
  }
}
