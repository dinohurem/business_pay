import 'package:business_pay/models/user.dart';
import 'package:business_pay/size_config.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  final User user;
  const Profile({
    Key? key,
    required this.user,
  }) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
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
                          height: SizeConfig.safeBlockVertical! * 50,
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
                        Center(
                          child: CircleAvatar(
                            radius: SizeConfig.safeBlockHorizontal! * 30,
                            backgroundImage: const AssetImage(
                              'assets/images/avatar.png',
                            ),
                          ),
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
                    child: Text(
                      'Edit Profile',
                      style: TextStyle(
                        fontSize: SizeConfig.safeBlockVertical! * 2.5,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  actions: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: SizeConfig.safeBlockHorizontal! * 2,
                        vertical: SizeConfig.safeBlockVertical! * 2,
                      ),
                      child: GestureDetector(
                        onTap: () => Navigator.pop(context),
                        child: Text(
                          'Save',
                          style: TextStyle(
                            fontSize: SizeConfig.safeBlockVertical! * 2.5,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
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
              height: SizeConfig.safeBlockVertical! * 47,
              width: SizeConfig.safeBlockHorizontal! * 100,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(SizeConfig.safeBlockHorizontal! * 8),
                  topRight:
                      Radius.circular(SizeConfig.safeBlockHorizontal! * 8),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: SizeConfig.safeBlockHorizontal! * 10,
                  vertical: SizeConfig.safeBlockVertical! * 2.75,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Username',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[400],
                      ),
                    ),
                    TextFormField(
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                      initialValue: widget.user.username,
                      obscureText: false,
                      decoration: const InputDecoration(
                        border: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.grey,
                            width: 2.0,
                          ),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black,
                            width: 2.0,
                          ),
                        ),
                      ),
                      keyboardType: TextInputType.text,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter a value.';
                        }
                        return '';
                      },
                    ),
                    SizedBox(
                      height: SizeConfig.safeBlockVertical! * 3,
                    ),
                    Text(
                      'Email',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[400],
                      ),
                    ),
                    TextFormField(
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                      initialValue: widget.user.email,
                      obscureText: false,
                      decoration: const InputDecoration(
                        border: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.grey,
                            width: 2.0,
                          ),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black,
                            width: 2.0,
                          ),
                        ),
                      ),
                      keyboardType: TextInputType.emailAddress,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter a value.';
                        }
                        return '';
                      },
                    ),
                    SizedBox(
                      height: SizeConfig.safeBlockVertical! * 3,
                    ),
                    Text(
                      'Phone',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[400],
                      ),
                    ),
                    TextFormField(
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                      initialValue: widget.user.phone,
                      obscureText: false,
                      decoration: const InputDecoration(
                        border: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.grey,
                            width: 2.0,
                          ),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black,
                            width: 2.0,
                          ),
                        ),
                      ),
                      keyboardType: TextInputType.emailAddress,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter a value.';
                        }
                        return '';
                      },
                    ),
                    SizedBox(
                      height: SizeConfig.safeBlockVertical! * 3,
                    ),
                    Text(
                      'Gender',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[400],
                      ),
                    ),
                    TextFormField(
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                      initialValue: widget.user.gender,
                      obscureText: false,
                      decoration: const InputDecoration(
                        border: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.grey,
                            width: 2.0,
                          ),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black,
                            width: 2.0,
                          ),
                        ),
                      ),
                      keyboardType: TextInputType.emailAddress,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter a value.';
                        }
                        return '';
                      },
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
