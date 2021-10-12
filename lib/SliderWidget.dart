import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SliderWidgets extends StatefulWidget {
  const SliderWidgets({Key? key}) : super(key: key);

  @override
  _SliderWidgetsState createState() => _SliderWidgetsState();
}

class _SliderWidgetsState extends State<SliderWidgets> {
  double value = 21;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
            brightness: Brightness.light,
            backgroundColor: Color(0xffD4ECDD),
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


            middle: Text('CUPERTINO Slider')),
        backgroundColor: Color(0xff345B63),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(


              child: Text(
                "This is Cupertino Slider",
                style: TextStyle(fontSize: 16.5,color: Color(0xffD4ECDD),decoration: TextDecoration.none,),
              ),
            ),
            Container(
              width: double.infinity,
              height: 100,
              child: CupertinoSlider(
                  activeColor: Color(0xffD4ECDD),
                  divisions: 10,
                  value: value,
                  min: 20,
                  max: 100,
                  onChanged: (value) {
                    setState(() {
                      this.value = value;
                    });
                  }),
            )
          ],
        ),
      ),
    );
  }
}
