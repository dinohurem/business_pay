import 'package:business_pay/models/transaction.dart';
import 'package:business_pay/screens/home/user/custom_card.dart';
import 'package:business_pay/size_config.dart';
import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

class Transactions extends StatelessWidget {
  const Transactions({Key? key}) : super(key: key);

  List<Transaction> get transactions => [
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
      ];

  List<Transaction> get fundings => [
        Transaction(
          company: 'Charge',
          amount: 1000,
          type: '',
          date: DateTime.now(),
        ),
        Transaction(
          company: 'Top Up',
          amount: 100,
          type: '',
          date: DateTime.now(),
        ),
        Transaction(
          company: 'Refund',
          amount: 250,
          type: '',
          date: DateTime.now(),
        ),
        Transaction(
          company: 'Top Up',
          amount: 450,
          type: '',
          date: DateTime.now(),
        ),
        Transaction(
          company: 'Refund',
          amount: 150,
          type: '',
          date: DateTime.now(),
        ),
      ];

  get dataMap => <String, double>{
        "INNA petrol company": 750,
        "Petrol BIH Oil Company": 100,
        "Barsa restoran": 150,
      };

  get colorList => <Color>[
        const Color(0xfffd79a8),
        const Color(0xfffdcb6e),
        const Color(0xff0984e3),
        const Color(0xffe17055),
        const Color(0xff6c5ce7),
      ];

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: Container(
        width: SizeConfig.safeBlockHorizontal! * 100,
        color: Colors.grey[300],
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: SizeConfig.safeBlockVertical!,
            horizontal: SizeConfig.safeBlockHorizontal! * 2.5,
          ),
          child: ListView(
            children: [
              SizedBox(
                height: SizeConfig.safeBlockVertical! * 2,
              ),
              CustomCard(
                text: 'Transactions',
                items: transactions,
                height: SizeConfig.safeBlockVertical! * 35,
              ),
              SizedBox(
                height: SizeConfig.safeBlockVertical! * 2,
              ),
              CustomCard(
                text: 'Fundings',
                items: fundings,
                height: SizeConfig.safeBlockVertical! * 25,
              ),
              SizedBox(
                height: SizeConfig.safeBlockVertical! * 2,
              ),
              Container(
                width: SizeConfig.safeBlockHorizontal! * 90,
                height: SizeConfig.safeBlockVertical! * 30,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(SizeConfig.safeBlockHorizontal! * 3.5),
                  ),
                ),
                child: PieChart(
                  dataMap: dataMap,
                  animationDuration: const Duration(milliseconds: 800),
                  chartLegendSpacing: SizeConfig.safeBlockHorizontal! * 10,
                  chartRadius: SizeConfig.safeBlockHorizontal! * 25,
                  colorList: colorList,
                  initialAngleInDegree: 0,
                  chartType: ChartType.ring,
                  ringStrokeWidth: 32,
                  centerText: '',
                  legendOptions: LegendOptions(
                    showLegendsInRow: true,
                    legendPosition: LegendPosition.bottom,
                    showLegends: true,
                    legendShape: BoxShape.circle,
                    legendTextStyle: TextStyle(
                      fontSize: SizeConfig.safeBlockVertical! * 1.25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  chartValuesOptions: const ChartValuesOptions(
                    showChartValueBackground: true,
                    showChartValues: true,
                    showChartValuesInPercentage: false,
                    showChartValuesOutside: false,
                    decimalPlaces: 1,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
