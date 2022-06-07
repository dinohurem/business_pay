import 'package:business_pay/screens/home/admin/send_money_successful.dart';
import 'package:business_pay/size_config.dart';
import 'package:flutter/material.dart';

class SendMoney extends StatelessWidget {
  const SendMoney({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: const Color.fromARGB(255, 204, 211, 218),
        body: Column(
          children: [
            Stack(
              children: <Widget>[
                Column(
                  children: [
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          height: SizeConfig.safeBlockVertical! * 40,
                          width: SizeConfig.safeBlockHorizontal! * 100,
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
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(
                                  SizeConfig.safeBlockHorizontal! * 8),
                              bottomRight: Radius.circular(
                                  SizeConfig.safeBlockHorizontal! * 8),
                            ),
                          ),
                        ),
                        Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Icon(
                                  Icons.arrow_back_ios,
                                  size: SizeConfig.safeBlockVertical! * 4,
                                  color: Colors.black,
                                ),
                                Center(
                                  child: CircleAvatar(
                                    radius:
                                        SizeConfig.safeBlockHorizontal! * 15,
                                    backgroundImage: const AssetImage(
                                      'assets/images/avatar.png',
                                    ),
                                  ),
                                ),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  size: SizeConfig.safeBlockVertical! * 4,
                                  color: Colors.black,
                                ),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                top: SizeConfig.safeBlockVertical! * 4,
                              ),
                              child: Text(
                                'Lonnie Murphy',
                                style: TextStyle(
                                  fontSize:
                                      SizeConfig.safeBlockVertical! * 2.75,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                AppBar(
                  foregroundColor: Colors.black,
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                  title: Center(
                    child: Padding(
                      padding: EdgeInsets.only(
                        right: SizeConfig.safeBlockHorizontal! * 4,
                      ),
                      child: Text(
                        'Send Money',
                        style: TextStyle(
                          fontSize: SizeConfig.safeBlockVertical! * 2.5,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
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
              ],
            ),
            SizedBox(
              height: SizeConfig.safeBlockVertical! * 3,
            ),
            Container(
              width: SizeConfig.safeBlockHorizontal! * 90,
              height: SizeConfig.safeBlockVertical! * 46,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  SizeConfig.safeBlockHorizontal! * 5,
                ),
                color: Colors.white,
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: SizeConfig.safeBlockVertical! * 4,
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
                              SizedBox(
                                height: SizeConfig.safeBlockVertical! * 4,
                                width: SizeConfig.safeBlockHorizontal! * 50,
                                child: TextFormField(
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: SizeConfig.safeBlockVertical! * 3,
                                  ),
                                  initialValue: null,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.only(
                                      bottom:
                                          SizeConfig.safeBlockVertical! * 1.75,
                                    ),
                                    border: InputBorder.none,
                                  ),
                                  keyboardType: TextInputType.text,
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'Please enter a value.';
                                    }
                                    return '';
                                  },
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
                              SizedBox(
                                height: SizeConfig.safeBlockVertical! * 3.5,
                                width: SizeConfig.safeBlockHorizontal! * 50,
                                child: TextFormField(
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: SizeConfig.safeBlockVertical! * 3,
                                  ),
                                  initialValue: null,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.only(
                                      bottom:
                                          SizeConfig.safeBlockVertical! * 1.75,
                                    ),
                                    border: InputBorder.none,
                                  ),
                                  keyboardType: TextInputType.text,
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'Please enter a value.';
                                    }
                                    return '';
                                  },
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
                                'Reason:',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: SizeConfig.safeBlockVertical! * 3,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                width: SizeConfig.safeBlockHorizontal! * 2,
                              ),
                              SizedBox(
                                height: SizeConfig.safeBlockVertical! * 3.5,
                                width: SizeConfig.safeBlockHorizontal! * 50,
                                child: TextFormField(
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: SizeConfig.safeBlockVertical! * 3,
                                  ),
                                  initialValue: null,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.only(
                                      bottom:
                                          SizeConfig.safeBlockVertical! * 1.75,
                                    ),
                                    border: InputBorder.none,
                                  ),
                                  keyboardType: TextInputType.text,
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'Please enter a value.';
                                    }
                                    return '';
                                  },
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
                              SizedBox(
                                height: SizeConfig.safeBlockVertical! * 3.5,
                                width: SizeConfig.safeBlockHorizontal! * 50,
                                child: TextFormField(
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: SizeConfig.safeBlockVertical! * 3,
                                  ),
                                  initialValue: null,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.only(
                                      bottom:
                                          SizeConfig.safeBlockVertical! * 1.75,
                                    ),
                                    border: InputBorder.none,
                                  ),
                                  keyboardType: TextInputType.text,
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'Please enter a value.';
                                    }
                                    return '';
                                  },
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
                    builder: (context) => const SendMoneySuccessful(),
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
                    'Send',
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
