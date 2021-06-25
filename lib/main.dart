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
              child: Column(
                children: [
                  Text("180886 - Agenda"),
                  Text("\nRene do Nascimento Correa"),
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
                Container(
                  color: Colors.white,
                  child: Row(
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
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => PagEvento1()));
                        },
                        child: Icon(Icons.keyboard_arrow_right_outlined,
                            color: Colors.blue),
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.white)),
                      )
                    ],
                  ),
                ),
                Container(
                  color: Colors.blue,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: <Widget>[
                          Text(
                            DateFormat('MMM').format(Event2().date),
                            style: TextStyle(fontSize: 14),
                          ),
                          Text(
                            Event2().date.day.toString(),
                            style: TextStyle(fontSize: 30),
                          ),
                          Text(
                            DateFormat('EEEE').format(Event2().date),
                            style: TextStyle(fontSize: 14),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(Event2().title, style: TextStyle(fontSize: 15)),
                          Text(Event2().place,
                              style: TextStyle(
                                  fontSize: 14, fontStyle: FontStyle.italic)),
                          Text(Event2().time, style: TextStyle(fontSize: 14))
                        ],
                      ),
                      Icon(Icons.local_movies, color: Colors.white),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => PagEvento2()));
                        },
                        child: Icon(Icons.keyboard_arrow_right_outlined,
                            color: Colors.white),
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.blue)),
                      )
                    ],
                  ),
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
  var image = "assets/Pizza.jpg";
  var time = "19:00";
  var phone = "1548798521";
  var describe =
      "A casa oferece diversas pizzas tradicionais, especiais e doces, para retirar no balcão ou receber em casa. \nOpções de serviço: Para viagem · Entrega sem contato";
}

class Event2 {
  var title = "Star Wars VI - Return of Jedi";
  var date = DateTime.utc(1983, 8, 6);
  var type = "Cinema";
  var place = "Shopping Iguatemi - Cineflix";
  var image = "assets/SW_VI.jpg";
  var phone = "1525874896";
  var time = "22:00";

  var describe =
      "Star Wars: Episode VI - Return of the Jedi — lançado originalmente como Return of the Jedi — é um filme épico/space opera norte-americano de 1983, dirigido por Richard Marquand e escrito por Lawrence Kasdan e George Lucas, com base na história de Lucas, com Lucas como produtor executivo. Cronologicamente, é o sexto filme da saga Star Wars, e o primeiro a utilizar a tecnologia THX.";
}

class PagEvento1 extends StatelessWidget {
  const PagEvento1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Icon(
              Icons.fastfood_rounded,
              color: Colors.blue,
              size: 80,
            ),
            Text(
              Event1().title,
              style: TextStyle(fontSize: 20),
            ),
            Text(Event1().place),
            Text(Event1().phone),
            Text(DateFormat("HH:mm - dd/MM/yyyy ").format(Event1().date)),
            Padding(padding: EdgeInsets.only(top: 50)),
            Text(Event1().describe),
            Padding(padding: EdgeInsets.only(top: 50)),
            Row(
              children: [],
            )
          ],
        ),
      ),
    );
  }
}

class PagEvento2 extends StatelessWidget {
  const PagEvento2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        /*decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage(Event2().image),
          fit: BoxFit.cover,
        ),),*/
        child: Column(
          children: [
            //new Image.asset(Event2().image),
            Icon(
              Icons.local_movies,
              color: Colors.blue,
              size: 80,
            ),
            Text(
              Event2().title,
              style: TextStyle(fontSize: 20),
            ),
            Text(Event2().place),
            Text(Event2().phone),
            Text(DateFormat("HH:mm - dd/MM/yyyy ").format(Event2().date)),
            Padding(padding: EdgeInsets.only(top: 50)),
            Text(Event2().describe),
            Padding(padding: EdgeInsets.only(top: 50)),
            Row(
              children: [],
            )
          ],
        ),
      ),
    );
  }
}
