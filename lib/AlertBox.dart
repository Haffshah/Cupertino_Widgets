import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertDialogBox extends StatelessWidget {
  const AlertDialogBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoButton.filled(
      borderRadius: BorderRadius.all(
        Radius.circular(30.0),
      ),
      pressedOpacity: 0.4,
      padding: const EdgeInsets.all(20.0),
      child: const Text('Alert Dialog'),
      onPressed: () {
        showCupertinoDialog<void>(
          context: context,
          builder: (BuildContext context) => CupertinoAlertDialog(
            title: Image.asset("images/cupertino.png"),
            content: const Text('This is Alert dialog box'),
            actions: <CupertinoDialogAction>[
              CupertinoDialogAction( isDestructiveAction: true,
                child: const Text('No'),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              CupertinoDialogAction(
                child: const Text('Yes'),

                onPressed: () {
                  Navigator.pop(context);
                },
              )
            ],
          ),
        );
      },
    );
  }
}
