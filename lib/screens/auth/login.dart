import 'package:business_pay/screens/auth/register.dart';
import 'package:business_pay/screens/home/admin/admin_home.dart';
import 'package:business_pay/screens/home/user/home.dart';
import 'package:business_pay/shared/custom_text_field.dart';
import 'package:business_pay/size_config.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return WillPopScope(
      onWillPop: () async => false,
      child: Container(
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
                  height: SizeConfig.safeBlockVertical! * 45,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: SizeConfig.safeBlockVertical! * 5,
                      ),
                      CustomTextFormField(
                        text: 'Email',
                        controller: emailController,
                      ),
                      SizedBox(
                        height: SizeConfig.safeBlockVertical! * 2.5,
                      ),
                      CustomTextFormField(
                        text: 'Password',
                        controller: passwordController,
                      ),
                      SizedBox(
                        height: SizeConfig.safeBlockVertical! * 2.5,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: SizeConfig.safeBlockHorizontal! * 5,
                        ),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    emailController.text == 'admin'
                                        ? const AdminHome()
                                        : const Home(),
                              ),
                            );
                          },
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
                                'Login',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize:
                                      SizeConfig.safeBlockHorizontal! * 3.5,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: SizeConfig.safeBlockVertical! * 2.5,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: SizeConfig.safeBlockHorizontal! * 5,
                        ),
                        child: const Text(
                          'Do not have an account?',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: SizeConfig.safeBlockVertical! * 2.5,
                      ),
                      GestureDetector(
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Register(),
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: SizeConfig.safeBlockHorizontal! * 5,
                          ),
                          child: Container(
                            width: SizeConfig.safeBlockHorizontal! * 20,
                            height: SizeConfig.safeBlockVertical! * 6,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                color: Colors.lightBlue,
                              ),
                              borderRadius: BorderRadius.all(
                                Radius.circular(
                                    SizeConfig.safeBlockHorizontal! * 3.5),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                'Register',
                                style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold,
                                  fontSize:
                                      SizeConfig.safeBlockHorizontal! * 3.5,
                                ),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: SizeConfig.safeBlockVertical! * 3,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: SizeConfig.safeBlockHorizontal! * 10,
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: SizeConfig.safeBlockHorizontal! * 7,
                      foregroundImage: const NetworkImage(
                          'https://cdn.icon-icons.com/icons2/2631/PNG/512/gmail_new_logo_icon_159149.png'),
                    ),
                  ),
                  SizedBox(
                    width: SizeConfig.safeBlockHorizontal! * 10,
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: SizeConfig.safeBlockHorizontal! * 10,
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: SizeConfig.safeBlockHorizontal! * 8,
                      foregroundImage: const NetworkImage(
                          'https://www.apkmirror.com/wp-content/uploads/2019/11/5dc9cca8bdd02.png'),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
