import 'package:business_pay/screens/auth/register_success.dart';
import 'package:business_pay/shared/custom_text_field.dart';
import 'package:business_pay/size_config.dart';
import 'package:flutter/material.dart';

class Register extends StatelessWidget {
  const Register({Key? key}) : super(key: key);

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
              height: SizeConfig.safeBlockVertical! * 20,
            ),
            Center(
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
                    color: Colors.white,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(SizeConfig.safeBlockHorizontal! * 7.5),
                  ),
                ),
                width: SizeConfig.safeBlockHorizontal! * 80,
                height: SizeConfig.safeBlockVertical! * 50,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: SizeConfig.safeBlockVertical! * 5,
                    ),
                    const CustomTextFormField(
                      text: 'Company\'s Name',
                      controller: null,
                    ),
                    SizedBox(
                      height: SizeConfig.safeBlockVertical! * 2.5,
                    ),
                    const CustomTextFormField(text: 'Admin\'s Name'),
                    SizedBox(
                      height: SizeConfig.safeBlockVertical! * 2.5,
                    ),
                    const CustomTextFormField(text: 'Last Name'),
                    SizedBox(
                      height: SizeConfig.safeBlockVertical! * 2.5,
                    ),
                    const CustomTextFormField(text: 'Number of cards'),
                    SizedBox(
                      height: SizeConfig.safeBlockVertical! * 2.5,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: SizeConfig.safeBlockHorizontal! * 5,
                      ),
                      child: GestureDetector(
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const RegisterSuccess()),
                        ),
                        child: Container(
                          width: SizeConfig.safeBlockHorizontal! * 20,
                          height: SizeConfig.safeBlockVertical! * 6,
                          decoration: BoxDecoration(
                            color: const Color(0xff76beee),
                            borderRadius: BorderRadius.all(
                              Radius.circular(
                                  SizeConfig.safeBlockHorizontal! * 3.5),
                            ),
                          ),
                          child: Center(
                            child: Text(
                              'Register',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: SizeConfig.safeBlockHorizontal! * 3.5,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
