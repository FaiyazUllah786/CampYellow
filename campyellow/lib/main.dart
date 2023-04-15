import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:campyellow/homescreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:page_transition/page_transition.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  runApp(App());
}

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Splash(),
    );
  }
}

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  double boxHeight = 250;
  double boxWidth = 250;
  double radius = 250;

  @override
  void initState() {
    // TODO: implement initState
    Future.delayed(Duration(seconds: 1)).then((value) {
      setState(() {
        boxHeight = MediaQuery.of(context).size.height;
        boxWidth = MediaQuery.of(context).size.width;
        radius = 0;
      });
    }).then((value) {
      Future.delayed(Duration(milliseconds: 1200)).then((value) {
        Navigator.pushReplacement(
            context,
            PageTransition(
                curve: Curves.easeOut,
                child: HomeScreen(),
                type: PageTransitionType.topToBottom,
                duration: Duration(seconds: 2)));
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedContainer(
          curve: Curves.easeInOutCirc,
          duration: Duration(milliseconds: 900),
          height: boxHeight,
          width: boxWidth,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(radius),
            color: Colors.yellow.shade700,
          ),
          child: Center(
              child: Text(
            "Camp Yellow",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          )),
        ),
      ),
    );
  }
}
