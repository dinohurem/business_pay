import 'package:business_pay/screens/home/user/transaction_record_detail.dart';
import 'package:business_pay/size_config.dart';
import 'package:flutter/material.dart';

class TransactionRecord extends StatelessWidget {
  final String company;
  final double amount;

  const TransactionRecord({
    Key? key,
    required this.company,
    required this.amount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: SizeConfig.safeBlockVertical!,
      ),
      child: GestureDetector(
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) =>
                TransactionRecordDetail(title: company, amount: amount),
          ),
        ),
        child: Container(
          width: SizeConfig.safeBlockHorizontal! * 90,
          height: SizeConfig.safeBlockVertical! * 8,
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: <Color>[
                Color(0xff76beee),
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
            borderRadius: BorderRadius.all(
              Radius.circular(SizeConfig.safeBlockHorizontal! * 3.5),
            ),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: SizeConfig.safeBlockHorizontal! * 2,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: SizeConfig.safeBlockHorizontal! * 20,
                  child: Text(
                    company,
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  width: SizeConfig.safeBlockHorizontal! * 15,
                  child: Text(
                    '$amount \$',
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
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
