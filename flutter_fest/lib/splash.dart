import 'package:flutter/material.dart';
import 'package:flutter_fest/my_home_page.dart';


class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    _navigatetohom();
  }

  Future _navigatetohom() async {
    await Future.delayed(const Duration(seconds: 3), () {});
    Navigator.push<MaterialPageRoute>(
        context,
        MaterialPageRoute(
            builder: (BuildContext context) => const MyHomePage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold (
      body: Center (
        child: Text ('Hello'),
      ),
    );
  }
}
