import 'package:business_pay/models/transaction.dart';
import 'package:business_pay/screens/home/user/transaction_record.dart';
import 'package:business_pay/size_config.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomCard extends StatelessWidget {
  final String text;
  final List<Transaction> items;
  final double height;

  const CustomCard({
    Key? key,
    required this.text,
    required this.items,
    required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.safeBlockHorizontal! * 90,
      height: height,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(SizeConfig.safeBlockHorizontal! * 3.5),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: SizeConfig.safeBlockHorizontal! * 3,
          vertical: SizeConfig.safeBlockVertical! * 2,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              text,
              style: TextStyle(
                color: Colors.black,
                fontSize: SizeConfig.safeBlockHorizontal! * 5,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: SizeConfig.safeBlockVertical! * 2,
            ),
            SizedBox(
              height: height - SizeConfig.safeBlockVertical! * 10,
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.vertical,
                itemCount: items.length,
                itemBuilder: (BuildContext context, int index) {
                  return TransactionRecord(
                    company: items[index].company,
                    amount: items[index].amount,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
