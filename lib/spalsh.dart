import 'package:flutter/material.dart';
import 'package:flutter_app/screens/home/home.dart';

// memakai statefull karena disini kita akan
// melakukan pengecekan user, tentu disini akan
// ada yang namanya proses
class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    // TODO: implement initState
    _checkUserSementara();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("Loading...")),
    );
  }

  //garis bawah di bawah ini merupakan
  //private, intinya method ini tidak bisa
  //dipanggil di luar kelasnya

  void _checkUserSementara() async {
    await Future.delayed(Duration(seconds: 2));

    // navigator, push dan push replacement

    Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
  }
}
