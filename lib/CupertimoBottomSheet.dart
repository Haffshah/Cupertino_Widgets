import 'package:flutter/cupertino.dart';

class CupertinoBottomSheet extends StatefulWidget {
  const CupertinoBottomSheet({Key? key}) : super(key: key);

  @override
  _CupertinoBottomSheetState createState() => _CupertinoBottomSheetState();
}

class _CupertinoBottomSheetState extends State<CupertinoBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return  CupertinoActionSheet(
      title: Image.asset('images/cupertino.png'),
      cancelButton: CupertinoActionSheetAction(
          isDestructiveAction: true,
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Cancel')),
      actions: [
        CupertinoActionSheetAction(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('Edit')),
        CupertinoActionSheetAction(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('Update')),
        CupertinoActionSheetAction(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('Delete'))
      ],
    );
  }
}
