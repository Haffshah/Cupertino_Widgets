import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContextMenuWidget extends StatelessWidget {
  const ContextMenuWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoContextMenu(
      child: Image.asset('images/Cupertinosquare.png'),
      actions: <Widget>[
        CupertinoContextMenuAction(
          child: Text(
            "Do you Like This App Icon?",
            style: TextStyle(
                fontSize: 15.0, fontWeight: FontWeight.bold),
          ),
        ),
        CupertinoContextMenuAction(
          child: const Text('Yes,I Do!'),
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('You Selected Yes!')));
            Navigator.pop(context);
          },
        ),
        CupertinoContextMenuAction(
          child: const Text('No,I Don\'t!'),
          isDestructiveAction: true,
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('You Selected No! ')));
            Navigator.pop(context);
          },
        ),
      ],
    );
  }
}
