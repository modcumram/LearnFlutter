import 'package:flutter/material.dart';

class Authen extends StatefulWidget {
  @override
  _AuthenState createState() => _AuthenState();
}

class _AuthenState extends State<Authen> {
  Widget showTitle() {
    return Text(
      'สำนักงานเลขาธิการสภาผู้แทนราษฎร',
      style: TextStyle(
          fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.red[900]),
    );
  }

  Widget showLogo() {
    return Image.asset('images/logo.png');
  }

  Widget showUser() {
    // return TextField()
    return TextFormField(
      decoration:
          InputDecoration(labelText: 'ชื่อผู้ใช้ :', hintText: 'Your username'),
    );
  }

  Widget showPassword() {
    return TextFormField(
      decoration:
          InputDecoration(labelText: 'รหัสผ่าน', hintText: 'Your Password'),
    );
  }

  Widget showSignUp() {
    return RaisedButton(
      child: Text('สมัคร'),
      onPressed: () {},
    );
  }

  Widget showSignin() {
    return RaisedButton(
      child: Text('ตกลง'),
      onPressed: () {},
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(resizeToAvoidBottomPadding: false,
        body: Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [Colors.blue[800], Colors.white,],begin: Alignment(-1, -1))),
      padding: EdgeInsets.only(top: 70.0),
      alignment: Alignment(0, -1),
      child: Column(
        children: <Widget>[
          showLogo(),
          Container(
            margin: EdgeInsets.only(top: 15.0),
            child: showTitle(),
          ),
          Container(
            margin: EdgeInsets.only(left: 35.0, right: 20.0),
            child: showUser(),
          ),
          Container(
            margin: EdgeInsets.only(left: 35.0, right: 20.0),
            child: showPassword(),
          ),
          Container(
            margin: EdgeInsets.only(left: 50.0, right: 50.0),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: showSignin(),
                ),
                Expanded(
                  child: showSignUp(),
                )
              ],
            ),
          )
        ],
      ),
    ));
  }
}
