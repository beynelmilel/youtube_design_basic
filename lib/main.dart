import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.grey,
      ),
      home: const MyHomePage(title: 'Youtube Ana Ekran Tasarımı'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ustbar(),
      body: anaekran(),
      bottomNavigationBar: BottomNavigationBar(
          onTap: (int i) {},
          currentIndex: 0,
          type: BottomNavigationBarType.fixed,
          fixedColor: Colors.red,
          // https://api.flutter.dev/flutter/material/BottomNavigationBar-class.html
          // bunun diğer özelliklerine bak !!!!!
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: "Ev",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.trending_up),
              label: "Trendler",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.subscriptions),
              label: "Abonelikler",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.backspace_sharp),
              label: "Kaydedilenler",
            ),
          ]),
    );
  }

  // bu şekilde ayırmak inceleme kolaylaştırıyor
  // flutter design patternlere bak
  AppBar ustbar() {
    return AppBar(
      backgroundColor: Colors.grey.shade800,
      title: Container(
        width: 110,
        height: 45,
        child: Image.asset("assets/images/logo.png"),
      ),
      actions: <Widget>[
        IconButton(
          icon: Icon(
            Icons.cast,
            color: Colors.black,
          ),
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(
            Icons.video_call,
            color: Colors.black,
          ),
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(
            Icons.search,
            color: Colors.black,
          ),
          onPressed: () {},
        ),
        Container(
          margin: const EdgeInsets.all(10),
          child: CircleAvatar(
            backgroundImage: AssetImage("assets/images/barispp.jpg"),
          ),
        ),
      ],
    );
  }

  Widget anaekran() {
    return ListView(
      children: List.generate(3, (int i) {
        return Column(
          children: <Widget>[
            Image.asset("assets/images/$i.jpg"),
            SizedBox(
              height: 5,
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage("assets/images/barispp.jpg"),
              ),
              title: Text(
                "Barış Özcan İzliyoruzzzzz",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text("Bu adam 5M olur"),
            ),
            SizedBox(
              height: 20,
            )
          ],
        );
      }),
    );
  }
}

//youtube da veri çekerek yapan kanalın videosuna bak veri çekmeyi incele
