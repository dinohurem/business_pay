import 'package:business_pay/screens/home/admin/admin_home.dart';
import 'package:business_pay/size_config.dart';
import 'package:flutter/material.dart';

class CreateCardSuccessful extends StatelessWidget {
  const CreateCardSuccessful({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Material(
      child: Container(
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 204, 211, 218),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AdminHome(),
                  ),
                  (route) => false,
                );
              },
              child: Center(
                child: Image.asset(
                  'assets/images/thumbs-up.png',
                  width: SizeConfig.safeBlockHorizontal! * 50,
                  height: SizeConfig.safeBlockVertical! * 50,
                ),
              ),
            ),
            Icon(
              Icons.keyboard_arrow_up,
              color: Colors.white,
              size: SizeConfig.safeBlockVertical! * 2.5,
            ),
            Text(
              'Tap on image to continue',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: SizeConfig.safeBlockVertical! * 2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
