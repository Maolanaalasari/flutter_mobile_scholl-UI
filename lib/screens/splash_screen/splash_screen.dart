import 'package:brain_school/screens/login_screen/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class SplashScreen extends StatefulWidget {
  // Route name for our screen
  static const String routeName = 'SplashScreen';

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // We use Future to navigate to another screen after a delay
    Future.delayed(Duration(seconds: 5), () {
      // No return: when the user is on the login screen and presses back,
      // they will not return to the splash screen
      Navigator.pushNamedAndRemoveUntil(
          context, LoginScreen.routeName, (route) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Scaffold color is set to primary color in main in our text theme
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'School',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                Text(
                  'Brain',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
              ],
            ),
            Image.asset(
              'assets/images/splash.jpeg',
              // 25% of height & 50% of width
              height: 25.h,
              width: 50.w,
            ),
          ],
        ),
      ),
    );
  }
}
