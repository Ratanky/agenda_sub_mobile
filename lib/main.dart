import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool _filterShow = false;

  List events = [Event1(), Event2()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("180886 - Agenda"),
        actions: <Widget>[
          ElevatedButton(
            child: Icon(Icons.filter_alt, color: Colors.white),
            onPressed: () {
              setState(() {
                _filterShow = !_filterShow;
              });
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Row(
                children: [
                  Text("180886 - Agenda"),
                  Text("Rene do Nascimento Correa")
                ],
              ),
            )
          ],
        ),
      ),
      body: Container(
        child: Column(
          children: [
            Visibility(
                visible: _filterShow,
                child: Container(
                  color: Colors.black87,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          ElevatedButton(
                              child:
                                  Icon(Icons.local_movies, color: Colors.white),
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                  shape: new CircleBorder())),
                          Text(
                            "Cinema",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          ElevatedButton(
                              child: Icon(Icons.sports_basketball_rounded,
                                  color: Colors.white),
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                  shape: new CircleBorder())),
                          Text(
                            "Esports",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          ElevatedButton(
                              child: Icon(Icons.music_note_rounded,
                                  color: Colors.white),
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                  shape: new CircleBorder())),
                          Text(
                            "Musica",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          ElevatedButton(
                              child: Icon(Icons.fastfood_rounded,
                                  color: Colors.white),
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                  shape: new CircleBorder())),
                          Text(
                            "Comida",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ],
                  ),
                )),
            Container(
              color: Colors.blue,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "search",
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: <Widget>[
                        Text(
                          DateFormat('MMM').format(Event1().date),
                          style: TextStyle(fontSize: 14),
                        ),
                        Text(
                          Event1().date.day.toString(),
                          style: TextStyle(fontSize: 30),
                        ),
                        Text(
                          DateFormat('EEEE').format(Event1().date),
                          style: TextStyle(fontSize: 14),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(Event1().title, style: TextStyle(fontSize: 15)),
                        Text(Event1().place,
                            style: TextStyle(
                                fontSize: 14, fontStyle: FontStyle.italic)),
                        Text(Event1().time, style: TextStyle(fontSize: 14))
                      ],
                    ),
                    Icon(Icons.fastfood_rounded, color: Colors.blue),
                    Icon(Icons.keyboard_arrow_right_outlined,
                        color: Colors.blue),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Event1 {
  var title = "Nova Pizzaria";
  var date = DateTime.utc(2020, 9, 10);
  var type = "Comida";
  var place = "Av. Dom Aguirre, 158";
  var time = "19:00";
}

class Event2 {
  var title = "Star Wars VI - Return of Jedi";
  var date = DateTime.utc(1983, 8, 6);
  var type = "Cinema";
  var place = "Shopping Iguatemi - Cineflix";
  var time = "22:00";
}
