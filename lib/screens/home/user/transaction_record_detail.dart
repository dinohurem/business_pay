import 'package:business_pay/size_config.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TransactionRecordDetail extends StatelessWidget {
  final double amount;
  final String title;
  const TransactionRecordDetail({
    Key? key,
    required this.amount,
    required this.title,
  }) : super(key: key);

  getCurrentDate() {
    final now = DateTime.now();
    String formatter = DateFormat.yMMMMd('en_US').format(now);
    return formatter;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 204, 211, 218),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
          ),
          title: Center(
            child: Text(
              'business pay',
              style: TextStyle(
                fontSize: SizeConfig.safeBlockVertical! * 2,
                color: Colors.black,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          actions: [
            Padding(
              padding: EdgeInsets.only(
                right: SizeConfig.safeBlockHorizontal! * 2,
              ),
              child: const Icon(
                Icons.more_vert,
                color: Colors.black,
              ),
            )
          ],
        ),
        body: Column(
          children: [
            Center(
              child: Text(
                title,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: SizeConfig.safeBlockVertical! * 3,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: SizeConfig.safeBlockVertical! * 3),
            Container(
              width: SizeConfig.safeBlockHorizontal! * 90,
              height: SizeConfig.safeBlockVertical! * 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  SizeConfig.safeBlockHorizontal! * 5,
                ),
                color: Colors.white,
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: SizeConfig.safeBlockVertical! * 8,
                  ),
                  Container(
                    height: SizeConfig.safeBlockVertical! * 15,
                    width: SizeConfig.safeBlockHorizontal! * 80,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                      ),
                      borderRadius: BorderRadius.circular(
                        SizeConfig.safeBlockHorizontal! * 5,
                      ),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(
                            SizeConfig.safeBlockHorizontal! * 4,
                            SizeConfig.safeBlockVertical! * 1.5,
                            0,
                            SizeConfig.safeBlockVertical!,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'Amount:',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: SizeConfig.safeBlockVertical! * 3,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                width: SizeConfig.safeBlockHorizontal! * 2,
                              ),
                              Text(
                                '\$$amount',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: SizeConfig.safeBlockVertical! * 3,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Divider(
                          color: Colors.black,
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(
                            SizeConfig.safeBlockHorizontal! * 4,
                            SizeConfig.safeBlockVertical! * 1.5,
                            0,
                            SizeConfig.safeBlockVertical!,
                          ),
                          child: Row(
                            children: [
                              Text(
                                'Date:',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: SizeConfig.safeBlockVertical! * 3,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                width: SizeConfig.safeBlockHorizontal! * 2,
                              ),
                              Text(
                                getCurrentDate(),
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: SizeConfig.safeBlockVertical! * 3,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: SizeConfig.safeBlockVertical! * 8,
                  ),
                  Container(
                    height: SizeConfig.safeBlockVertical! * 15,
                    width: SizeConfig.safeBlockHorizontal! * 80,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                      ),
                      borderRadius: BorderRadius.circular(
                        SizeConfig.safeBlockHorizontal! * 5,
                      ),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(
                            SizeConfig.safeBlockHorizontal! * 4,
                            SizeConfig.safeBlockVertical! * 1.5,
                            0,
                            SizeConfig.safeBlockVertical!,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'Status:',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: SizeConfig.safeBlockVertical! * 3,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                width: SizeConfig.safeBlockHorizontal! * 2,
                              ),
                              Text(
                                "PROCESSED",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: SizeConfig.safeBlockVertical! * 3,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Divider(
                          color: Colors.black,
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(
                            SizeConfig.safeBlockHorizontal! * 4,
                            SizeConfig.safeBlockVertical! * 1.5,
                            0,
                            SizeConfig.safeBlockVertical!,
                          ),
                          child: Row(
                            children: [
                              Text(
                                'From card:',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: SizeConfig.safeBlockVertical! * 3,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                width: SizeConfig.safeBlockHorizontal! * 2,
                              ),
                              Text(
                                '',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: SizeConfig.safeBlockVertical! * 3,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: SizeConfig.safeBlockVertical! * 3,
            ),
            Text(
              'Disclaimer:',
              style: TextStyle(
                color: Colors.black,
                fontSize: SizeConfig.safeBlockVertical! * 3,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: SizeConfig.safeBlockVertical!,
            ),
            Text(
              'All transactions are available for review.',
              style: TextStyle(
                color: Colors.grey,
                fontSize: SizeConfig.safeBlockVertical! * 2.5,
                fontWeight: FontWeight.w500,
              ),
            )
          ],
        ),
      ),
    );
  }
}
