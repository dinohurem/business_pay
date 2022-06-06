// ignore_for_file: must_be_immutable

import 'package:business_pay/size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BusinessCardFront extends StatefulWidget {
  final int index;
  bool enabled;
  bool favorite;
  final String cardNumber;
  final String cardHolder;
  final void Function(int) nextCardFunction;
  final void Function(int) previousCardFunction;

  BusinessCardFront({
    Key? key,
    required this.index,
    required this.enabled,
    required this.favorite,
    required this.cardNumber,
    required this.cardHolder,
    required this.nextCardFunction,
    required this.previousCardFunction,
  }) : super(key: key);

  @override
  State<BusinessCardFront> createState() => _BusinessCardFrontState();
}

class _BusinessCardFrontState extends State<BusinessCardFront> {
  void _toggleCard(bool value) {
    setState(() {
      widget.enabled = value;
    });
  }

  void _toggleFavoriteCard() {
    setState(() {
      widget.favorite = !widget.favorite;
    });
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Column(
      children: [
        SizedBox(
          height: SizeConfig.safeBlockVertical! * 2,
        ),
        Container(
          height: SizeConfig.safeBlockVertical! * 27,
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Color.fromARGB(255, 31, 138, 209),
                Color(0xff96cfe3),
                Color(0xffcaded3),
                Color(0xfffadfc2),
                Color(0xffffc8b9),
                Color(0xffff9aac),
                Color(0xffff689d),
                Color(0xffff43a9),
                Color(0xffff4479),
              ],
              tileMode: TileMode.mirror,
            ),
            borderRadius: BorderRadius.circular(
              SizeConfig.safeBlockHorizontal! * 5,
            ),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: SizeConfig.safeBlockHorizontal! * 3,
              vertical: SizeConfig.safeBlockVertical!,
            ),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: SizeConfig.safeBlockHorizontal! * 2,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CupertinoSwitch(
                        value: widget.enabled,
                        onChanged: _toggleCard,
                      ),
                      IconButton(
                        onPressed: _toggleFavoriteCard,
                        icon: Icon(
                          widget.favorite
                              ? Icons.favorite
                              : Icons.favorite_border,
                          size: SizeConfig.safeBlockVertical! * 4,
                          color: Colors.redAccent,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: SizeConfig.safeBlockVertical! * 1.5,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: SizeConfig.safeBlockHorizontal! * 2,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        widget.cardNumber,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: SizeConfig.safeBlockVertical! * 2.25,
                          fontWeight: FontWeight.bold,
                          letterSpacing: SizeConfig.safeBlockHorizontal! * 0.75,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: SizeConfig.safeBlockVertical! * 1.5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {
                        widget.previousCardFunction(widget.index);
                      },
                      icon: Icon(
                        Icons.arrow_back_ios,
                        size: SizeConfig.safeBlockVertical! * 4,
                        color: Colors.white,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        widget.nextCardFunction(widget.index);
                      },
                      icon: Icon(
                        Icons.arrow_forward_ios,
                        size: SizeConfig.safeBlockVertical! * 4,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: SizeConfig.safeBlockVertical! * 4,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: SizeConfig.safeBlockHorizontal! * 2,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        widget.cardHolder,
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
