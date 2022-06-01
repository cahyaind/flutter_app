import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/widget_auth.dart';
import 'package:flutter_app/widgets/widgets.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ForgotPassword extends StatefulWidget {
  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  TextEditingController _email = TextEditingController();

  bool _isLoading = false;

  Widget _inputEmail() {
    return Container(
      child: TextField(
        controller: _email,
        decoration:
            InputDecoration(hintText: 'Email', helperText: "Enter your email!"),
      ),
    );
  }

  Widget _inputSubmit() {
    return wInputSubmit(
        context: context, title: 'Send', onPressed: _loginSementara);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: _isLoading
          ? wAppLoading(context)
          : Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.transparent,
                elevation: 0,
                iconTheme: IconThemeData(color: Colors.black),
              ),
              resizeToAvoidBottomPadding: false,
              body: Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 30),
                    wAuthTitle(
                      title: "Forgot Password",
                      subtitle:
                          'Enter your email and this system will send u link, \nto reset your password!',
                    ),
                    _inputEmail(),
                    SizedBox(height: 30),
                    _inputSubmit(),
                  ],
                ),
              ),
            ),
    );
  }

  void _loginSementara() async {
    if (_email.text.isNotEmpty) {
      setState(() {
        _isLoading = true;
      });
      print("OALAH BERHASIL YA");
      await Future.delayed(Duration(seconds: 2));
      wShowToast('Email Sended. Please check your E-Mail to reset password!');
      Navigator.pop(context);
    } else {
      print('lah ga bisa');
    }
  }
}
