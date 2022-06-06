import 'package:business_pay/screens/auth/login.dart';
import 'package:business_pay/size_config.dart';
import 'package:flutter/material.dart';

class RegisterSuccess extends StatelessWidget {
  const RegisterSuccess({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
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
      ),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.transparent,
        body: Column(
          children: [
            SizedBox(
              height: SizeConfig.safeBlockVertical! * 25,
            ),
            GestureDetector(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Login(),
                ),
              ),
              child: Center(
                child: Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.25),
                        spreadRadius: 2,
                        blurRadius: 4,
                        offset: const Offset(0, 3),
                      ),
                    ],
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.lightGreen,
                      width: SizeConfig.safeBlockHorizontal! * 0.5,
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(SizeConfig.safeBlockVertical! * 40),
                    ),
                  ),
                  width: SizeConfig.safeBlockHorizontal! * 70,
                  height: SizeConfig.safeBlockVertical! * 40,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: SizeConfig.safeBlockHorizontal! * 15,
                        child: Icon(
                          Icons.check,
                          size: SizeConfig.safeBlockVertical! * 15,
                          color: Colors.lightGreen,
                        ),
                      ),
                      Text(
                        'Successfully registered.',
                        style: TextStyle(
                          fontSize: SizeConfig.safeBlockHorizontal! * 5,
                          fontWeight: FontWeight.bold,
                          color: Colors.lightGreen,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: SizeConfig.safeBlockVertical! * 10,
            ),
            Text(
              'Tap anywhere on the circle to continue.',
              style: TextStyle(
                fontSize: SizeConfig.safeBlockHorizontal! * 3,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
