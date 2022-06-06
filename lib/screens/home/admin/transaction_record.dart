import 'package:business_pay/models/transaction.dart';
import 'package:business_pay/size_config.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TransactionRecord extends StatelessWidget {
  final Transaction transaction;
  final IconData icon;
  final Color color;
  const TransactionRecord({
    Key? key,
    required this.transaction,
    required this.icon,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Column(
      children: [
        SizedBox(
          height: SizeConfig.safeBlockVertical! * 5.5,
          width: SizeConfig.safeBlockHorizontal! * 90,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(
                icon,
                size: SizeConfig.safeBlockVertical! * 3,
                color: color,
              ),
              SizedBox(
                width: SizeConfig.safeBlockHorizontal! * 10,
              ),
              SizedBox(
                width: SizeConfig.safeBlockHorizontal! * 50,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      transaction.company,
                      style: TextStyle(
                        fontSize: SizeConfig.safeBlockVertical! * 2,
                        fontWeight: FontWeight.bold,
                        color: const Color.fromARGB(255, 7, 86, 139),
                      ),
                    ),
                    Text(
                      DateFormat.yMMMMd('en_US').format(transaction.date),
                      style: TextStyle(
                        fontSize: SizeConfig.safeBlockVertical! * 1.5,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                '\$ ${transaction.amount.toString()}',
                style: TextStyle(
                  fontSize: SizeConfig.safeBlockVertical! * 2.5,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 7, 86, 139),
                ),
              ),
            ],
          ),
        ),
        const Divider(
          color: Colors.grey,
        )
      ],
    );
  }
}
