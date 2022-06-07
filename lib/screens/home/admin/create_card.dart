import 'package:business_pay/screens/home/admin/create_card_successful.dart';
import 'package:business_pay/size_config.dart';
import 'package:circle_checkbox/redev_checkbox.dart';
import 'package:flutter/material.dart';

class CreateCard extends StatefulWidget {
  const CreateCard({Key? key}) : super(key: key);

  @override
  State<CreateCard> createState() => _CreateCardState();
}

class _CreateCardState extends State<CreateCard> {
  bool? typeOfCard = false;
  bool? cardHolderEmployee = false;
  bool? cardHolderUtility = true;
  bool? typeCardPlastic = false;
  bool? typeCardVirtual = true;
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
                'Add a card',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: SizeConfig.safeBlockVertical! * 3,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: SizeConfig.safeBlockHorizontal! * 4,
                vertical: SizeConfig.safeBlockVertical! * 3,
              ),
              child: Container(
                height: SizeConfig.safeBlockVertical! * 26,
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
                    horizontal: SizeConfig.safeBlockHorizontal! * 4,
                    vertical: SizeConfig.safeBlockVertical!,
                  ),
                  child: Column(
                    children: [
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
                              'Employee',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: SizeConfig.safeBlockVertical! * 2.25,
                                fontWeight: FontWeight.bold,
                              ),
                            )
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
                              '- Assigned to an individual\n- Access to mobile app\n- Set limits and controls',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: SizeConfig.safeBlockVertical! * 2.25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              top: SizeConfig.safeBlockVertical! * 5,
                            ),
                            child: Container(
                              width: SizeConfig.safeBlockHorizontal! * 16,
                              height: SizeConfig.safeBlockVertical! * 2.75,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage("assets/images/visa.png"),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              width: SizeConfig.safeBlockHorizontal! * 90,
              height: SizeConfig.safeBlockVertical! * 45,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  SizeConfig.safeBlockHorizontal! * 5,
                ),
                color: Colors.white,
              ),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: SizeConfig.safeBlockHorizontal! * 6,
                        vertical: SizeConfig.safeBlockVertical! * 1.5,
                      ),
                      child: Text(
                        'Cardholder',
                        style: TextStyle(
                          fontSize: SizeConfig.safeBlockVertical! * 1.75,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
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
                            SizeConfig.safeBlockVertical! * 2,
                            0,
                            SizeConfig.safeBlockVertical!,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: SizeConfig.safeBlockVertical! * 2,
                                child: CircleCheckbox(
                                  value: cardHolderEmployee,
                                  onChanged: (value) {
                                    setState(() {
                                      cardHolderEmployee = value;
                                      cardHolderUtility = !cardHolderEmployee!;
                                    });
                                  },
                                ),
                              ),
                              SizedBox(
                                width: SizeConfig.safeBlockHorizontal! * 2,
                              ),
                              Text(
                                'Employee',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: SizeConfig.safeBlockVertical! * 2.5,
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
                            SizeConfig.safeBlockVertical! * 2,
                            0,
                            SizeConfig.safeBlockVertical!,
                          ),
                          child: Row(
                            children: [
                              SizedBox(
                                height: SizeConfig.safeBlockVertical! * 2,
                                child: CircleCheckbox(
                                  value: cardHolderUtility,
                                  onChanged: (value) {
                                    setState(() {
                                      cardHolderUtility = value;
                                      cardHolderEmployee = !cardHolderUtility!;
                                    });
                                  },
                                ),
                              ),
                              SizedBox(
                                width: SizeConfig.safeBlockHorizontal! * 2,
                              ),
                              Text(
                                'Utility',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: SizeConfig.safeBlockVertical! * 2.5,
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
                    height: SizeConfig.safeBlockVertical! * 3,
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: SizeConfig.safeBlockHorizontal! * 6,
                        vertical: SizeConfig.safeBlockVertical! * 1.5,
                      ),
                      child: Text(
                        'Type of card',
                        style: TextStyle(
                          fontSize: SizeConfig.safeBlockVertical! * 1.75,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
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
                            SizeConfig.safeBlockVertical! * 2,
                            0,
                            SizeConfig.safeBlockVertical!,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: SizeConfig.safeBlockVertical! * 2,
                                child: CircleCheckbox(
                                  value: typeCardPlastic,
                                  onChanged: (value) {
                                    setState(() {
                                      typeCardPlastic = value;
                                      typeCardVirtual = !typeCardPlastic!;
                                    });
                                  },
                                ),
                              ),
                              SizedBox(
                                width: SizeConfig.safeBlockHorizontal! * 2,
                              ),
                              Text(
                                'Plastic',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: SizeConfig.safeBlockVertical! * 2.5,
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
                            SizeConfig.safeBlockVertical! * 2,
                            0,
                            SizeConfig.safeBlockVertical!,
                          ),
                          child: Row(
                            children: [
                              SizedBox(
                                height: SizeConfig.safeBlockVertical! * 2,
                                child: CircleCheckbox(
                                  value: typeCardVirtual,
                                  onChanged: (value) {
                                    setState(() {
                                      typeCardVirtual = value;
                                      typeCardPlastic = !typeCardVirtual!;
                                    });
                                  },
                                ),
                              ),
                              SizedBox(
                                width: SizeConfig.safeBlockHorizontal! * 2,
                              ),
                              Text(
                                'Virtual',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: SizeConfig.safeBlockVertical! * 2.5,
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
              height: SizeConfig.safeBlockVertical! * 2,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CreateCardSuccessful(),
                  ),
                );
              },
              child: Container(
                height: SizeConfig.safeBlockVertical! * 6,
                width: SizeConfig.safeBlockHorizontal! * 75,
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
                    'Make',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: SizeConfig.safeBlockVertical! * 2.25,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
