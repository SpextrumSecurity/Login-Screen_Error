import 'package:flutter/material.dart';
import 'package:issaq_project/widgets/widgets.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  Widget _authTitle() {
    return wAuthTitle(
      title: 'Login',
      subtitle: 'Enter Your Email & Password',
    );
  }

  Widget _inputEmail() {
    return Container(
      child: TextField(
        decoration: InputDecoration(hintText: 'Email'),
      ),
    );
  }

  Widget _inputPassword() {
    return Stack(
      children: <Widget>[
        Container(
          child: TextField(
            decoration: InputDecoration(hintText: 'Password'),
          ),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: IconButton(
            icon: Icon(Icons.visibility),
            onPressed: () {},
          ),
        )
      ],
    );
  }

  Widget _forgotPassowrd() {
    return GestureDetector(
        child: Align(
          alignment: Alignment.centerLeft,
          child: Container(
            color: Colors.transparent,
            padding: EdgeInsets.fromLTRB(0, 20, 20, 20),
            child: Text('Forgot Password ?'),
          ),
        ),
        onTap: () {
          print('Forgot Password ?');
        });
  }

  Widget _inputSubmit() {
    return wInputSubmit(context: context, title: 'Login', OnPressed: () {});
  }

  Widget _googleSignIn() {
    return wGoogleSignIn(onPressed: () {});
  }

  Widget _textRegister() {
    return Container(
      margin: EdgeInsets.only(top: 40),
      child: Row(children: <Widget>[
        Text('Dont Hace an account yet ? '),
        GestureDetector(
            child: Container(
                padding: EdgeInsets.all(10),
                color: Colors.transparent,
                child: Text(
                  'Register',
                  style: TextStyle(fontWeight: FontWeight.bold),
                )),
            onTap: () {
              print('Register');
            })
      ]),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  _authTitle(),
                  _inputEmail(),
                  _inputPassword(),
                  _forgotPassowrd(),
                  _inputSubmit(),
                  wTextDivider(),
                  _googleSignIn(),
                  _textRegister(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
