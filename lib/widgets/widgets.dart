import 'package:flutter/material.dart';

// Widget Loading Application
Widget wAppLoading(){

  return Center(
    child: CircularProgressIndicator(),
  );
}

  Widget wAuthTitle({required String title, required String subtitle}) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            title,
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
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
        children: <Widget>[
          Expanded(child: Divider()),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text('OR CONNECT WITH',
                style: TextStyle(fontSize: 12, color: Colors.grey)),
          ),
          Expanded(child: Divider()),
        ],
      ),
    );
  }

    Widget wGoogleSignIn({required Function onPressed}) {
    return Container(
      width: double.infinity,
      child: RaisedButton.icon(
        shape: StadiumBorder(),
        icon: Icon(Icons.adb),
        label: Text('Google'),
        onPressed: () {},
      ),
    );
  }
  Widget wInputSubmit({required BuildContext context, required String title, required Function OnPressed}) {
    return Container(
        width: double.infinity,
        child: RaisedButton(
          color: Theme.of(context).primaryColor,
          textColor: Colors.white,
          shape: StadiumBorder(),
          child: Text(title),
          onPressed: () {},
        ));
  }