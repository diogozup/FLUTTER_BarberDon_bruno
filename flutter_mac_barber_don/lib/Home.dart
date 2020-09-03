import 'package:barber_don/TelaSecundaria.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  CalendarController _controller;

  _Agendar(){

  }

  @override
  void initState() {
    super.initState();
    _controller = CalendarController();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
            "Don Hermanos",
          style: TextStyle(
            fontSize: 25,
            fontStyle: FontStyle.italic,
            color: Colors.white
        ),
        ),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.menu),
              onPressed: (){
                print("acao:menu");
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
              borderRadius: BorderRadius.circular(
                 60
              ),
            ),
            child: FlatButton(
                onPressed: (){
                  print("Agendar");
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => TelaSecundaria ()
                      )
                  );
                },
                child: Text(
                    "Agendar",
                  style: TextStyle(
                    fontSize: 20,
                    fontStyle: FontStyle.italic,
                    color: Colors.white
                  ),
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
                          color: Colors.white
                      )
                  ),
                  startingDayOfWeek: StartingDayOfWeek.monday,
                  onDaySelected: (date, events) {
                    print(date.toIso8601String());
                  },
                  builders: CalendarBuilders(
                    selectedDayBuilder: (context, date, eventens) =>
                        Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Theme.of(context).primaryColor,
                            borderRadius: BorderRadius.circular(10.0)
                          ),
                          child: Text(date.day.toString(), style: TextStyle(color: Colors.white),),
                        ),
                    todayDayBuilder: (context, date, events)  =>
                        Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Text(date.day.toString(), style: TextStyle(color: Colors.white),),
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
