import 'package:flutter/material.dart';
import 'package:flutter_app/screens/auth/forgot_password.dart';
import 'package:flutter_app/screens/home/home.dart';
import 'package:flutter_app/widgets/widget_auth.dart';
import 'package:flutter_app/widgets/widgets.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();
  bool _obscureText = true;
  bool _isLoading = false;

  Widget _inputEmail() {
    return Container(
      child: TextField(
        controller: _email,
        decoration: InputDecoration(hintText: 'Email'),
      ),
    );
  }

  Widget _inputPassword() {
    return Stack(
      children: [
        Container(
          child: TextField(
            controller: _password,
            obscureText: _obscureText,
            decoration: InputDecoration(
              hintText: 'Password',
            ),
          ),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: IconButton(
            icon: Icon(
              _obscureText ? Icons.visibility_off : Icons.visibility,
              color: Colors.grey,
            ),
            onPressed: () {
              setState(() => _obscureText = !_obscureText);
            },
          ),
        ),
      ],
    );
  }

  Widget _forgotPassword() {
    return GestureDetector(
      child: Align(
        alignment: Alignment.centerLeft,
        child: Container(
          padding: EdgeInsets.fromLTRB(0, 20, 20, 20),
          // color: Colors.blue,
          child: Text("Forgot Password?"),
        ),
      ),
      onTap: () => wPushTo(context, ForgotPassword()),
    );
  }

  Widget _inputSubmit() {
    return wInputSubmit(
        context: context, title: 'Login', onPressed: _loginSementara
        // () {
        //   print('Email = ${_email.text}');
        //   print('Password = ${_password.text}');
        // }
        );
  }

  // Widget _textDivider() {
  //   return wTextDivider();
  // }

  Widget _googleSignIn() {
    return Container(
      width: double.infinity,
      child: RaisedButton.icon(
        shape: StadiumBorder(),
        icon: Icon(
          MdiIcons.google,
          size: 20,
        ),
        label: Text('Google'),
        onPressed: () {},
      ),
    );
  }

  Widget _textRegister() {
    return wTextRegister(
      "Don't have an accout yet?",
      "Register",
      () {},
    );

    // return Container(
    //   margin: EdgeInsets.only(top: 40),
    //   child: Row(
    //     mainAxisAlignment: MainAxisAlignment.center,
    //     children: [
    //       Text("Don't have an accout yet?"),
    //       GestureDetector(
    //         child: Container(
    //           padding: EdgeInsets.all(10),
    //           // color: Colors.transparent,
    //           child: Text(
    //             "Register",
    //             style: TextStyle(fontWeight: FontWeight.bold),
    //           ),
    //         ),
    //         onTap: () {
    //           print('REGISTER NIH');
    //         },
    //       ),
    //     ],
    //   ),
    // );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: _isLoading
          ? wAppLoading(context)
          : Scaffold(
              resizeToAvoidBottomPadding: false, //agar ui tidak naik ke atas
              // selain avoid, kita jg dpt refactor 2x, yg kedua diganti dgn SingleChildScrollView: agar ui dpt di scroll
              body: Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    wAuthTitle(
                      title: "Login",
                      subtitle: 'Enter your email and password',
                    ),
                    _inputEmail(),
                    _inputPassword(),
                    _forgotPassword(),
                    _inputSubmit(),
                    wTextDivider(),
                    _googleSignIn(),
                    _textRegister(),
                  ],
                ),
              ),
            ),
    );
  }

  void _loginSementara() async {
    if (_email.text == "email@gmail.com" && _password.text == "12345") {
      setState(() {
        _isLoading = true;
      });
      await Future.delayed(Duration(seconds: 2));
      wPushReplaceTo(context, Home());
    } else {
      print('lah ga bisa');
    }
  }
}
