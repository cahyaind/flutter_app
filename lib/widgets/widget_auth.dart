import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

Widget wAuthTitle({String title, String subtitle}) {
  return Container(
    width: double.infinity,
    padding: EdgeInsets.only(bottom: 20),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 23,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 3),
        Text(subtitle),
      ],
    ),
  );
}

Widget wTextDivider() {
  return Container(
    margin: EdgeInsets.symmetric(vertical: 10),
    child: Row(
      children: [
        Expanded(child: Divider()),
        Padding(
          padding: const EdgeInsets.all(10),
          child: Text(
            "OR CONNECT WITH",
            style: TextStyle(
              fontSize: 12,
              color: Colors.grey,
            ),
          ),
        ),
        Expanded(child: Divider()),
      ],
    ),
  );
}

Widget wTextRegister(String text, String title, Function onTap) {
  return Container(
    margin: EdgeInsets.only(top: 40),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(text),
        GestureDetector(
          child: Container(
            padding: EdgeInsets.all(10),
            // color: Colors.transparent,
            child: Text(
              title,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          onTap: onTap,
        ),
      ],
    ),
  );
}

Widget wInputSubmit({BuildContext context, String title, Function onPressed}) {
  return Container(
    width: double.infinity,
    child: RaisedButton(
      color: Theme.of(context).primaryColor,
      textColor: Colors.white,
      shape: StadiumBorder(),
      child: Text(title),
      onPressed: onPressed,
    ),
  );
}
