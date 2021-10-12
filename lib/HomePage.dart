import 'dart:ui';
import 'package:cupertinowidgets/AlertBox.dart';
import 'package:cupertinowidgets/ContextMenuWidget.dart';
import 'package:cupertinowidgets/CupertinoActionSheetWidget.dart';
import 'package:cupertinowidgets/CupertimoBottomSheet.dart';
import 'package:cupertinowidgets/CupertinoSwitch.dart';
import 'package:cupertinowidgets/LeftSideMenu.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool indicator = false;


  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: Color(0xff292826),
      navigationBar: CupertinoNavigationBar(
          brightness: Brightness.light,
          backgroundColor: Color(0xffF9D342),
          padding: EdgeInsetsDirectional.all(10.0),
          automaticallyImplyMiddle: false,
          border: const Border(
            bottom: BorderSide(color: Colors.white, width: 2.0),
          ),
          leading: GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    CupertinoPageRoute(
                      builder: (context) => DrawerClass(),
                    ));
              },
              child: Icon(
                CupertinoIcons.rectangle_grid_1x2_fill,
                size: 25.0,
              )),
          automaticallyImplyLeading: false,
          transitionBetweenRoutes: true,
          trailing: GestureDetector(onTap:() {
                Navigator.push(
                  context,
                  CupertinoPageRoute(
                    builder: (context) => CupertinoSwitchWidget(),
                  ),
                );
              },child: Icon(CupertinoIcons.play)),
          middle: Text('CUPERTINO widgets')),
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 20.0,
              ),
              SizedBox(
                height: 20.0,
              ),
              AlertDialogBox(),
              SizedBox(
                height: 20.0,
              ),
              CupertinoActionSheetWidget(),
              SizedBox(
                height: 20.0,
              ),
              Center(
                child: SizedBox(
                  width: 100,
                  height: 100,
                  child: ContextMenuWidget(),
                ),
              ),
              SizedBox(
                height: 50.0,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.orange,
                    elevation: 20.0,
                    shadowColor: Colors.orangeAccent,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.horizontal(
                            left: Radius.elliptical(200, 50),
                            right: Radius.elliptical(200, 50))),
                    padding: EdgeInsetsDirectional.all(20.0),
                    fixedSize: Size(MediaQuery.of(context).size.width * 0.8,
                        MediaQuery.of(context).size.height * 0.1)),
                onPressed: () {
                  setState(() {
                    ShowCupertinoBottomSheet(context);
                    indicator = !indicator;
                  });
                },
                child: indicator
                    ? CupertinoActivityIndicator(
                        radius: 12,
                        animating: true,
                      )
                    : Container(
                        child: Text(
                          'Cupertino ActionSheet',
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
              ),
              SizedBox(
                height: 50.0,
              ),



            ],
          ),
        ),
      ),
    );
  }

  Future<dynamic> ShowCupertinoBottomSheet(BuildContext context) {
    return Future.delayed(const Duration(milliseconds: 650), () {
      showCupertinoModalPopup(
          barrierColor: Colors.black38,
          context: context,
          builder: (_) {
            return CupertinoBottomSheet();
          });
    });
  }
}
