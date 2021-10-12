import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'SliderWidget.dart';

class CupertinoSwitchWidget extends StatefulWidget {
  const CupertinoSwitchWidget({Key? key}) : super(key: key);

  @override
  _CupertinoSwitchWidgetState createState() => _CupertinoSwitchWidgetState();
}

class _CupertinoSwitchWidgetState extends State<CupertinoSwitchWidget> {
  bool value = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CupertinoPageScaffold(
        backgroundColor: Color(0xffD1E8E4),
        navigationBar: CupertinoNavigationBar(
            brightness: Brightness.light,
            backgroundColor: Color(0xff63B4B8),
            padding: EdgeInsetsDirectional.all(10.0),
            automaticallyImplyMiddle: false,
            border: const Border(
              bottom: BorderSide(color: Colors.white, width: 2.0),
            ),
            leading: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(
                CupertinoIcons.back,
                size: 25.0,
              ),
            ),
            automaticallyImplyLeading: false,
            transitionBetweenRoutes: true,
            trailing: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SliderWidgets(),
                    ),
                  );
                },
                child: Icon(
                  CupertinoIcons.tray_2_fill,
                  size: 24,
                )),
            middle: Text('CUPERTINO Switch')),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 150),
            Container(
              height: 200.0,
              width: 200.0,
              child: value
                  ? Image.asset("images/on.png")
                  : Image.asset('images/off.png'),
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                    onPressed: () {},
                    child: value ? Text('Switch ON') : Text('Switch OFF')),
                CupertinoSwitch(
                    trackColor: Color(0xffC9CCD5),
                    activeColor: Color(0xffFFD523),
                    value: value,
                    onChanged: (bool state) {
                      setState(() {
                        value = !value;
                      });
                    }),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
