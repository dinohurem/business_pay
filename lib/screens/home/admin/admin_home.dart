// ignore_for_file: avoid_print

import 'package:business_pay/models/card.dart';
import 'package:business_pay/models/transaction.dart';
import 'package:business_pay/screens/home/admin/business_card_back.dart';
import 'package:business_pay/screens/home/admin/business_card_front.dart';
import 'package:business_pay/size_config.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class AdminHome extends StatefulWidget {
  const AdminHome({Key? key}) : super(key: key);

  @override
  State<AdminHome> createState() => _AdminHomeState();
}

class _AdminHomeState extends State<AdminHome> {
  int currentCardIndex = 0;
  final ItemScrollController itemScrollController = ItemScrollController();
  final ItemPositionsListener itemPositionsListener =
      ItemPositionsListener.create();
  double alignment = 0;
  double bannerHeight = 400;
  final scrollDuration = const Duration(seconds: 1);
  final cards = [
    CreditCard(
      enabled: true,
      favorite: true,
      cardNumber: '4111 1111 1111 1111',
      cardHolder: 'GOLDEN SKY',
      available: 3250,
      limit: 25000,
      transactions: [
        Transaction(
          company: 'Petrol BIH Oil Company',
          amount: 100,
          type: 'oil',
          date: DateTime.now(),
        ),
        Transaction(
          company: 'Barsa restoran',
          amount: 150,
          type: 'food',
          date: DateTime.now(),
        ),
        Transaction(
          company: 'INNA petrol company',
          amount: 250,
          type: 'oil',
          date: DateTime.now(),
        ),
        Transaction(
          company: 'INNA petrol company',
          amount: 250,
          type: 'oil',
          date: DateTime.now(),
        ),
        Transaction(
          company: 'INNA petrol company',
          amount: 250,
          type: 'oil',
          date: DateTime.now(),
        ),
      ],
    ),
    CreditCard(
      enabled: true,
      favorite: false,
      cardNumber: '42222 2222 2222 2222',
      cardHolder: 'RED SKY',
      available: 7800,
      limit: 10000,
      transactions: [
        Transaction(
          company: 'Petrol BIH Oil Company',
          amount: 100,
          type: 'oil',
          date: DateTime.now(),
        ),
        Transaction(
          company: 'Barsa restoran',
          amount: 150,
          type: 'food',
          date: DateTime.now(),
        ),
        Transaction(
          company: 'INNA petrol company',
          amount: 250,
          type: 'oil',
          date: DateTime.now(),
        ),
        Transaction(
          company: 'INNA petrol company',
          amount: 250,
          type: 'oil',
          date: DateTime.now(),
        ),
        Transaction(
          company: 'INNA petrol company',
          amount: 250,
          type: 'oil',
          date: DateTime.now(),
        ),
      ],
    ),
    CreditCard(
      enabled: true,
      favorite: false,
      cardNumber: '4111 1111 1111 1234',
      cardHolder: 'JAMES BOND',
      available: 9999,
      limit: 10000,
      transactions: [
        Transaction(
          company: 'Petrol BIH Oil Company',
          amount: 100,
          type: 'oil',
          date: DateTime.now(),
        ),
        Transaction(
          company: 'Barsa restoran',
          amount: 150,
          type: 'food',
          date: DateTime.now(),
        ),
        Transaction(
          company: 'INNA petrol company',
          amount: 250,
          type: 'oil',
          date: DateTime.now(),
        ),
        Transaction(
          company: 'INNA petrol company',
          amount: 250,
          type: 'oil',
          date: DateTime.now(),
        ),
        Transaction(
          company: 'INNA petrol company',
          amount: 250,
          type: 'oil',
          date: DateTime.now(),
        ),
      ],
    ),
  ];

  @override
  void initState() {
    super.initState();
  }

  void scrollTo(int index) {
    itemScrollController.scrollTo(
        index: index,
        duration: scrollDuration,
        curve: Curves.easeInOutCubic,
        alignment: alignment);

    setState(() {
      currentCardIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 204, 211, 218),
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(
            SizeConfig.safeBlockVertical! * 8,
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: SizeConfig.safeBlockHorizontal! * 4,
              vertical: SizeConfig.safeBlockVertical!,
            ),
            child: AppBar(
              titleSpacing: 0,
              elevation: 0,
              backgroundColor: Colors.transparent,
              leading: Container(),
              title: Center(
                child: Text(
                  'business pay',
                  style: TextStyle(
                    fontSize: SizeConfig.safeBlockVertical! * 2,
                    color: Colors.black,
                  ),
                ),
              ),
              actions: [
                CircleAvatar(
                  radius: SizeConfig.safeBlockHorizontal! * 6,
                  backgroundImage: const AssetImage(
                    'assets/images/avatar.png',
                  ),
                )
              ],
            ),
          ),
        ),
        body: SizedBox(
          height: SizeConfig.safeBlockVertical! * 105,
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: SizeConfig.safeBlockHorizontal! * 3,
              vertical: SizeConfig.safeBlockVertical! * 2,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: SizeConfig.safeBlockVertical! * 32,
                  child: ScrollablePositionedList.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: cards.length,
                    itemScrollController: itemScrollController,
                    itemPositionsListener: itemPositionsListener,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: SizeConfig.safeBlockHorizontal! * 2,
                        ),
                        child: SizedBox(
                          width: SizeConfig.safeBlockHorizontal! * 82,
                          child: FlipCard(
                            direction: FlipDirection.HORIZONTAL,
                            speed: 500,
                            onFlipDone: (status) {
                              print(status ? 'front' : 'back');
                            },
                            front: BusinessCardFront(
                              index: index,
                              enabled: true,
                              favorite: true,
                              cardNumber: '4111 1111 1111 1111',
                              cardHolder: 'GOLDEN SKY',
                              nextCardFunction: (index) {
                                scrollTo(index == cards.length - 1
                                    ? index
                                    : index + 1);
                              },
                              previousCardFunction: (index) {
                                scrollTo(index == 0 ? index : index - 1);
                              },
                            ),
                            back: BusinessCardBack(
                              enabled: true,
                              favorite: true,
                              cardNumber: 'XXXX-4321',
                              cardHolder: 'GOLDEN SKY',
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Icon(
                  Icons.keyboard_arrow_up,
                  color: Colors.white,
                  size: SizeConfig.safeBlockVertical! * 2,
                ),
                Text(
                  'Tap on card to flip it',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: SizeConfig.safeBlockVertical! * 1.5,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: SizeConfig.safeBlockHorizontal! * 3,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Available',
                        style: TextStyle(
                          fontSize: SizeConfig.safeBlockVertical! * 2,
                          fontWeight: FontWeight.bold,
                          color: const Color.fromARGB(255, 7, 86, 139),
                        ),
                      ),
                      Text(
                        'Limit',
                        style: TextStyle(
                          fontSize: SizeConfig.safeBlockVertical! * 2,
                          fontWeight: FontWeight.bold,
                          color: const Color.fromARGB(255, 7, 86, 139),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: SizeConfig.safeBlockHorizontal! * 3,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '\$ ${cards[currentCardIndex].available}',
                        style: TextStyle(
                          fontSize: SizeConfig.safeBlockVertical! * 3,
                          fontWeight: FontWeight.bold,
                          color: const Color.fromARGB(255, 7, 86, 139),
                        ),
                      ),
                      Text(
                        '\$ ${cards[currentCardIndex].limit}',
                        style: TextStyle(
                          fontSize: SizeConfig.safeBlockVertical! * 3,
                          fontWeight: FontWeight.bold,
                          color: const Color.fromARGB(255, 7, 86, 139),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: SizeConfig.safeBlockVertical! * 1),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: SizeConfig.safeBlockHorizontal! * 3,
                  ),
                  child: SizedBox(
                    height: SizeConfig.safeBlockVertical! * 6,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: SizeConfig.safeBlockHorizontal! * 68,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              SizeConfig.safeBlockHorizontal! * 3,
                            ),
                            gradient: const LinearGradient(
                              begin: Alignment.topRight,
                              end: Alignment.bottomLeft,
                              colors: [
                                Color.fromARGB(255, 31, 138, 209),
                                Color(0xffff4479),
                              ],
                              tileMode: TileMode.mirror,
                            ),
                          ),
                          child: Center(
                            child: Text(
                              'Send money',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: SizeConfig.safeBlockVertical! * 2.25,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: SizeConfig.safeBlockHorizontal! * 12,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            gradient: LinearGradient(
                              begin: Alignment.topRight,
                              end: Alignment.bottomLeft,
                              colors: [
                                Color(0xffff4479),
                                Color.fromARGB(255, 31, 138, 209),
                              ],
                              tileMode: TileMode.mirror,
                            ),
                          ),
                          child: Center(
                            child: Icon(
                              Icons.add,
                              color: Colors.white,
                              size: SizeConfig.safeBlockVertical! * 3,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: SizeConfig.safeBlockVertical! * 2,
                    ),
                    child: ListView.builder(
                      physics: const BouncingScrollPhysics(),
                      itemCount:
                          cards[currentCardIndex].transactions.length * 3,
                      scrollDirection: Axis.vertical,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            color: Colors.red,
                            height: SizeConfig.safeBlockVertical! * 3,
                            width: SizeConfig.safeBlockHorizontal! * 5,
                          ),
                        );
                      },
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
