import 'package:barber_don/TelaSecundaria.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class Home extends StatefulWidget {
  //**construtor que recebe parametros */
  String userEmail;
  String userName;

  Home(this.userName, this.userEmail);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  CalendarController _controller;

  //*------------------------------------------------ VARS
  String userEmail;
  String userName;
  // ignore: deprecated_member_use
  final databaseReference = Firestore.instance;
  //!------------------------------------------------ FUNCOES
  _Agendar() {}

  _getUsername() {
    print("** _getUsername **");
    if (userName.length == 0) {
      print("NICK NAME ESTA VAZIO");
      //get username of email
      _getData(userEmail);
    }
  }

  void _getData(String email) {
    databaseReference
        .collection("users")
        .where('userEmail', isEqualTo: userEmail)
        // ignore: deprecated_member_use
        .getDocuments()
        .then((value) {
      // ignore: deprecated_member_use
      value.documents.forEach((result) {
        print(result.data()['userName']);
        setState(() {
          userName = result.data()['userName'];
        });
      });
    });
  }

  _test() {
    print("\nacao:menu HOME");
    print("userEmail: " + userEmail);
    print("userName: " + userName);
  }

  @override
  void initState() {
    super.initState();
    _controller = CalendarController();
    userEmail = widget.userEmail;
    userName = widget.userName;
    _getUsername();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Don Hermanos",
          style: TextStyle(
              fontSize: 25, fontStyle: FontStyle.italic, color: Colors.white),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              _test();
            },
          ),
        ],
        centerTitle: true,
        backgroundColor: Color(0xff1a0f00),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Image.asset("image/corte_1.jpg"),
          Divider(),
          Container(
            height: 50,
            width: 250,
            decoration: BoxDecoration(
              color: Color(0xff1a0f00),
              borderRadius: BorderRadius.circular(60),
            ),
            child: FlatButton(
              onPressed: () {
                print("Agendar");
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => TelaSecundaria()));
              },
              child: Text(
                "Agendar",
                style: TextStyle(
                    fontSize: 20,
                    fontStyle: FontStyle.italic,
                    color: Colors.white),
              ),
              onLongPress: _Agendar,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                TableCalendar(
                  initialCalendarFormat: CalendarFormat.twoWeeks,
                  calendarStyle: CalendarStyle(
                      todayColor: Colors.orange,
                      selectedColor: Theme.of(context).primaryColor,
                      todayStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.white)),
                  startingDayOfWeek: StartingDayOfWeek.monday,
                  onDaySelected: (date, events) {
                    print(date.toIso8601String());
                  },
                  builders: CalendarBuilders(
                    selectedDayBuilder: (context, date, eventens) => Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Theme.of(context).primaryColor,
                          borderRadius: BorderRadius.circular(10.0)),
                      child: Text(
                        date.day.toString(),
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    todayDayBuilder: (context, date, events) => Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Text(
                        date.day.toString(),
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  calendarController: _controller,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
