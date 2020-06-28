import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Homescreen {
  signal() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Column(
          children: <Widget>[
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    height: 20,
                    width: 10,
                    decoration: BoxDecoration(color: Colors.black),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Container(
                    height: 20,
                    width: 6,
                    decoration: BoxDecoration(color: Colors.black),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Container(
                    height: 20,
                    width: 3.6,
                    decoration: BoxDecoration(color: Colors.black),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Container(
                    height: 20,
                    width: 3.6,
                    decoration: BoxDecoration(color: Colors.black),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 3,
            ),
            Image.asset('images/tower.jpg'),
          ],
        ),
      ],
    );
  }

  lock() {
    return Container(
      height: 20,
      width: 30,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('images/lock.jpg'),
        ),
      ),
    );
  }

  center(context) {
    return Stack(
      children: <Widget>[
        lock(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 25,
            ),
            Text(
              'Jio',
              style: Theme.of(context).textTheme.headline1,
            ),
            SizedBox(height: 25),
            Text(
              'Souvik',
              style: Theme.of(context).textTheme.headline1,
            ),
          ],
        ),
      ],
    );
  }

  batteryBar() {
    return Container(
      child: Column(
        children: <Widget>[
          Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Container(
                height: 20,
                width: 10,
                decoration: BoxDecoration(color: Colors.black),
              ),
              SizedBox(
                height: 3,
              ),
              Container(
                height: 20,
                width: 6,
                decoration: BoxDecoration(color: Colors.black),
              ),
              SizedBox(
                height: 3,
              ),
              Container(
                height: 20,
                width: 3.6,
                decoration: BoxDecoration(color: Colors.black),
              ),
              SizedBox(
                height: 3,
              ),
              Container(
                height: 20,
                width: 3.6,
                decoration: BoxDecoration(color: Colors.black),
              ),
            ],
          ),
          Container(
            height: 40,
            width: 30,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/battery.jpg'),
              ),
            ),
          ),
        ],
      ),
    );
  }

  time(context) {
    var date = TimeOfDay.now();
    print(date);
    var fdate = date.toString().substring(11);
    var odate = fdate.split(')');
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Text('${odate[0]}', style: Theme.of(context).textTheme.bodyText1),
      ],
    );
  }

  homeScreen(context, height, width) {
    return Container(
      height: height,
      width: width,
      child: AspectRatio(
        aspectRatio: width / height,
        child: Container(
          height: height,
          width: width,
          decoration: BoxDecoration(color: Colors.green),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: signal(),
                  flex: 1,
                ),
                Expanded(
                  child: center(context),
                  flex: 2,
                ),
                Expanded(
                  child: time(context),
                  flex: 1,
                ),
                Expanded(
                  child: batteryBar(),
                  flex: 1,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
