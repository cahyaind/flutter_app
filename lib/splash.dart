import 'package:flutter/material.dart';
import 'package:flutter_app/screens/home/home.dart';
import 'package:flutter_app/screens/auth/login.dart';
import 'package:flutter_app/widgets/widgets.dart';

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
    _checkUserSementara(false);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: wAppLoading(context),
    );
  }

  //garis bawah di bawah ini merupakan
  //private, intinya method ini tidak bisa
  //dipanggil di luar kelasnya

  void _checkUserSementara(bool user) async {
    await Future.delayed(Duration(seconds: 4));

    // navigator, push dan push replacement
    // push -> ada tombol kembali
    // pushReplacement -> tidak ada tombol kembali, karena ditimpa

    // Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));

    Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (context) => user ? Home() : Login()));
    // memakai ternary
  }
}
