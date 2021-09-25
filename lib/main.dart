import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          title: Text('Settings'),
        ),
        body: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _UserInfo(),
              SizedBox(height: 20),
              _MenuBlock(),
            ],
          ),
        ),
      ),
    );
  }
}

class _MenuBlock extends StatelessWidget {
  const _MenuBlock({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.white,
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          _MenuWidgetRow(icon: Icons.account_balance_wallet, text: 'Favorite', iconColor: Colors.blue),
          _MenuWidgetRow(icon: Icons.call, text: 'Call', iconColor: Colors.green),
          _MenuWidgetRow(icon: Icons.computer, text: 'Devices', iconColor: Colors.orange),
          _MenuWidgetRow(icon: Icons.folder, text: 'Chat folder', iconColor: Colors.lightBlue),
        ],
      ),
    );
  }
}

class _MenuWidgetRow extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color iconColor;

  const _MenuWidgetRow({
    Key key,
    this.icon,
    this.text,
    this.iconColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(width: 1.0, color: Colors.grey[300]),
          ),
          color: Colors.white,
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 16),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Icon(
                icon,
                size: 26,
                color: iconColor,
              ),
              SizedBox(width: 15),
              Expanded(
                child: Text(
                  text,
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Icon(
                Icons.chevron_right,
                size: 24,
              ),
            ],
          ),
        ));
  }
}

class _UserInfo extends StatelessWidget {
  const _UserInfo({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.white,
      padding: EdgeInsets.all(20.0),
      child: Column(
        children: [
          _AvatarWidget(),
          SizedBox(height: 20),
          _UserName(),
          SizedBox(height: 10),
          _UserPhone(),
          SizedBox(height: 10),
          _UserEmail(),
        ],
      ),
    );
  }
}

class _AvatarWidget extends StatelessWidget {
  const _AvatarWidget({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      child: Placeholder(),
    );
  }
}

class _UserName extends StatelessWidget {
  const _UserName({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(
      'Elvin Alishov',
      style: TextStyle(
        color: Colors.black,
        fontSize: 25,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

class _UserPhone extends StatelessWidget {
  const _UserPhone({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(
      '+99470 676 78 15',
      style: TextStyle(
        color: Colors.grey,
        fontSize: 15,
      ),
    );
  }
}

class _UserEmail extends StatelessWidget {
  const _UserEmail({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(
      'elvinalishov84@gmail.com',
      style: TextStyle(
        color: Colors.grey,
        fontSize: 18,
      ),
    );
  }
}
