import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task_managet/ui/screens/login_screen.dart';
import 'package:task_managet/ui/utils/assets_utils.dart';
import 'package:task_managet/ui/widgets/screen_background.dart';

class SplashScren extends StatefulWidget {
  const SplashScren({super.key});

  @override
  State<SplashScren> createState() => _SplashScrenState();
}

class _SplashScrenState extends State<SplashScren> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    navigateToLogin();
  }

  /// this is the best way, this one kind of "Completer"
  void navigateToLogin() {
    Future.delayed(Duration(seconds: 5)).then((_){
      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => LoginScreen()), (route) => false);
    });
  }

  /// anather way for Delay method
  // Future<void> navigateToLogin() async {
  //   await Future.delayed(Duration(seconds: 5));
  //   Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => LoginScreen()), (route) => false);
  // }


  @override
  Widget build(BuildContext context) {
    return ScreenBackground(
        child: Center(
          child: SvgPicture.asset(AssetsUtils.logoSVG, width: 80, fit: BoxFit.scaleDown,),
        )
    );
  }
}
