import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var black = Color.fromRGBO(5, 5, 5, 100);
  signal() {
    return Stack(
      children: <Widget>[
        Positioned(left: 20, child: lock()),
        Column(
          children: <Widget>[
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    height: 20,
                    width: 10,
                    decoration: BoxDecoration(color: black),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Container(
                    height: 20,
                    width: 6,
                    decoration: BoxDecoration(color: black),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Container(
                    height: 20,
                    width: 3.6,
                    decoration: BoxDecoration(color: black),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Container(
                    height: 20,
                    width: 3.6,
                    decoration: BoxDecoration(color: black),
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
        Row(
          children: <Widget>[
            SizedBox(
              width: 18,
            ),
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
                SizedBox(
                  height: 60,
                ),
                Text(
                  'Menu',
                  style: Theme.of(context).textTheme.headline1,
                ),
              ],
            ),
          ],
        ),
        Positioned(
          left: 50,
          child: time(context),
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
                decoration: BoxDecoration(color: black),
              ),
              SizedBox(
                height: 3,
              ),
              Container(
                height: 20,
                width: 6,
                decoration: BoxDecoration(color: black),
              ),
              SizedBox(
                height: 3,
              ),
              Container(
                height: 20,
                width: 3.6,
                decoration: BoxDecoration(color: black),
              ),
              SizedBox(
                height: 3,
              ),
              Container(
                height: 20,
                width: 3.6,
                decoration: BoxDecoration(color: black),
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

  Widget time(context) {
    var date = TimeOfDay.now();
    print(date);
    var fdate = date.toString().split('(');
    var odate = fdate[1].split(')');
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Text('${odate[0]}', style: Theme.of(context).textTheme.bodyText1),
      ],
    );
  }

  Widget homeScreen(context, height, width) {
    return Container(
      height: height,
      width: width,
      child: AspectRatio(
        aspectRatio: width / height,
        child: Container(
          height: height,
          width: width,
          decoration: BoxDecoration(color: Colors.transparent),
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

  @override
  Widget build(BuildContext context) {
    return Container(child: homeScreen(context, 230.0, 200.0));
  }
}

class Screen extends StatefulWidget {
  @override
  _ScreenState createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  List<Widget> screenList = [HomeScreen(), PhoneBook(), Messages()];
  @override
  Widget build(BuildContext context) {
    return Container(child: screenList[2]);
  }
}

class PhoneBook extends StatefulWidget {
  @override
  _PhoneBookState createState() => _PhoneBookState();
}

class _PhoneBookState extends State<PhoneBook> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 230,
      width: 200,
      child: Center(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 20,
            ),
            Text('PhoneBook', style: Theme.of(context).textTheme.headline1),
            SizedBox(
              height: 25,
            ),
            Container(
              height: 40,
              width: 80,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/phonebook.jpg'),
                ),
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Select',
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ],
        ),
      ),
    );
  }
}

class Messages extends StatefulWidget {
  @override
  _MessagesState createState() => _MessagesState();
}

class _MessagesState extends State<Messages> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 230,
      width: 200,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(height: 25),
            Text(
              'Messages',
              style: Theme.of(context).textTheme.headline1,
            ),
            Container(
              height: 40,
              width: 80,
              child: Image.asset('images/messages.jpg'),
            ),
            Text(
              'Select',
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ],
        ),
      ),
    );
  }
}

class CallRegister extends StatefulWidget {
  @override
  _CallRegisterState createState() => _CallRegisterState();
}

class _CallRegisterState extends State<CallRegister> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(height: 25),
            Text(
              'Settings',
              style: Theme.of(context).textTheme.headline1,
            ),
            Container(
              height: 20,
              width: 40,
              child: Image.asset('images/phonesetings.jpg'),
            ),
            Text(
              'Select',
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ],
        ),
      ),
    );
  }
}

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(height: 25),
            Text(
              'Settings',
              style: Theme.of(context).textTheme.headline1,
            ),
            Container(
              height: 20,
              width: 40,
              child: Image.asset('images/settings.jpg'),
            ),
            Text(
              'Select',
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ],
        ),
      ),
    );
  }
}
