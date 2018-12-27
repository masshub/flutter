import 'package:flutter/material.dart';

class RaisedButtonDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Theme(
          data: Theme.of(context).copyWith(
            buttonColor: Theme.of(context).accentColor,
            buttonTheme: ButtonThemeData(
                textTheme: ButtonTextTheme.primary,
//                shape: BeveledRectangleBorder(
//                  borderRadius: BorderRadius.circular(10.0)
//                ),
            shape: StadiumBorder(),
            ),
          ),
          child: RaisedButton(
              onPressed: () {},
              child: Text(
                'Button0',
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.grey,
              elevation: 10.0,
              splashColor: Colors.cyanAccent,
              highlightColor: Colors.blue.withOpacity(0.2)),
        ),
        SizedBox(
          width: 16.0,
        ),
        RaisedButton.icon(
          onPressed: () {},
          icon: Icon(
            Icons.add,
            color: Colors.cyan,
          ),
          color: Colors.grey,
          label: Text('Button'),
          elevation: 10.0,
          textColor: Colors.cyan,
          splashColor: Colors.blueGrey,
          highlightColor: Colors.blue.withOpacity(0.2),
        )
      ],
    );
  }
}
