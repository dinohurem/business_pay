// ignore_for_file: must_be_immutable

import 'package:business_pay/size_config.dart';
import 'package:flutter/material.dart';

class BusinessCardBack extends StatefulWidget {
  bool enabled;
  bool favorite;
  final String cardNumber;
  final String cardHolder;

  BusinessCardBack({
    Key? key,
    required this.enabled,
    required this.favorite,
    required this.cardNumber,
    required this.cardHolder,
  }) : super(key: key);

  @override
  State<BusinessCardBack> createState() => _BusinessCardBackState();
}

class _BusinessCardBackState extends State<BusinessCardBack> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Column(
      children: [
        SizedBox(
          height: SizeConfig.safeBlockVertical! * 2,
        ),
        Container(
          height: SizeConfig.safeBlockVertical! * 30,
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Color.fromARGB(255, 231, 50, 95),
                Color.fromARGB(255, 75, 44, 214),
              ],
              tileMode: TileMode.mirror,
            ),
            borderRadius: BorderRadius.circular(
              SizeConfig.safeBlockHorizontal! * 5,
            ),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(
              vertical: SizeConfig.safeBlockVertical!,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: SizeConfig.safeBlockVertical! * 3.5,
                ),
                Container(
                  width: SizeConfig.safeBlockHorizontal! * 100,
                  height: SizeConfig.safeBlockVertical! * 6,
                  color: Colors.black,
                ),
                SizedBox(
                  height: SizeConfig.safeBlockVertical! * 2.5,
                ),
                Container(
                  width: SizeConfig.safeBlockHorizontal! * 80,
                  height: SizeConfig.safeBlockVertical! * 6,
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          right: SizeConfig.safeBlockHorizontal! * 3,
                        ),
                        child: Text(
                          '123',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: SizeConfig.safeBlockVertical! * 2.25,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: SizeConfig.safeBlockVertical! * 3.5,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: SizeConfig.safeBlockHorizontal! * 2,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'XXXX XXXX XXXX XXXX',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: SizeConfig.safeBlockVertical! * 2.25,
                          fontWeight: FontWeight.bold,
                          letterSpacing: SizeConfig.safeBlockHorizontal! * 0.75,
                        ),
                      ),
                      Container(
                        width: SizeConfig.safeBlockHorizontal! * 16,
                        height: SizeConfig.safeBlockVertical! * 2.75,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage("assets/images/visa.png"),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
