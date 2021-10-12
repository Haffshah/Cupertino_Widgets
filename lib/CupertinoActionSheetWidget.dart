import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoActionSheetWidget extends StatelessWidget {
  const CupertinoActionSheetWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      borderRadius: BorderRadius.circular(25),
      color: Color(0xff000000),
      child: const Text('Dialog Box'),
      onPressed: () {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return CupertinoAlertDialog(
              title: Column(
                children: <Widget>[
                  Text(" Allow \"Maps\" to access your " +
                      " location while you use the " +
                      " app? "),
                  Icon(
                    Icons.place_outlined,
                    color: Colors.red,
                  ),
                ],
              ),
              content: new Text(
                  "Your current location will be displayed on the map and used for directions, nearby search results, and estimated travel times. "),
              actions: <Widget>[
                CupertinoDialogAction(
                  child: Text("Don\'t Allow"),
                  onPressed: () {
                    Navigator.of(context).pop();
                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Don\'t Allow!')));
                  },
                ),
                CupertinoDialogAction(
                  child: Text("Allow"),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            );
          },
        );
      },
    );
  }
}
