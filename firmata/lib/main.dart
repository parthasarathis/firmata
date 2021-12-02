import 'dart:io';
import 'package:flutter/material.dart';
import 'constants.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:window_size/window_size.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  if (Platform.isWindows || Platform.isLinux || Platform.isMacOS) {
    setWindowTitle('App title');
    setWindowMinSize(const Size(432, 936));
    setWindowMaxSize(const Size(432, 936));
  }
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Firmata',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: bgColor,
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
            .apply(bodyColor: Colors.white),
        canvasColor: secondaryColor,
      ),
      home: MyHomePage(title: 'Firmata'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _toggled_2 = false;
  bool _toggled_3 = false;
  bool _toggled_4 = false;
  bool _toggled_5 = false;
  bool _toggled_6 = false;
  bool _toggled_7 = false;
  bool _toggled_8 = false;
  bool _toggled_9 = false;
  bool _toggled_10 = false;
  bool _toggled_11 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Card(
                color: bgColor,
                elevation: 25,
                margin: EdgeInsets.fromLTRB(25, 25, 25, 25),
                child: ListTile(
                    leading: Icon(Icons.touch_app),
                    title: Text(
                      'Select Port',
                      textAlign: TextAlign.center,
                    ),
                    trailing: Icon(Icons.menu_rounded),
                    onTap: () {
                      return showDialog(
                        context: context,
                        builder: (ctx) => AlertDialog(
                          title: Text(
                            "Select Serial Port",
                            textAlign: TextAlign.center,
                          ),
                          actions: <Widget>[
                            ElevatedButton(
                              onPressed: () {
                                Navigator.of(ctx).pop();
                              },
                              child: Text("cancel"),
                            ),
                          ],
                        ),
                      );
                    }),
              ),
              Text(
                "Selected Port is dispalyed here",
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Divider(),
              ),
              Text(
                "digitalWrite()",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Card(
                color: bgColor,
                elevation: 25,
                margin: EdgeInsets.fromLTRB(25, 25, 25, 10),
                child: SwitchListTile(
                  secondary: Icon(Icons.touch_app_sharp),
                  value: _toggled_2,
                  onChanged: (bool value) {
                    setState(() {
                      _toggled_2 = value;
                    });
                  },
                  title: Text(
                    "PIN 2",
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Card(
                color: bgColor,
                elevation: 25,
                margin: EdgeInsets.fromLTRB(25, 10, 25, 10),
                child: SwitchListTile(
                  secondary: Icon(Icons.touch_app_sharp),
                  value: _toggled_3,
                  onChanged: (bool value) {
                    setState(() {
                      _toggled_3 = value;
                      print(_toggled_2);
                    });
                  },
                  title: Text(
                    "PIN 3",
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Card(
                color: bgColor,
                elevation: 25,
                margin: EdgeInsets.fromLTRB(25, 10, 25, 10),
                child: SwitchListTile(
                  secondary: Icon(Icons.touch_app_sharp),
                  value: _toggled_4,
                  onChanged: (bool value) {
                    setState(() {
                      _toggled_4 = value;
                    });
                  },
                  title: Text(
                    "PIN 4",
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Card(
                color: bgColor,
                elevation: 25,
                margin: EdgeInsets.fromLTRB(25, 10, 25, 10),
                child: SwitchListTile(
                  secondary: Icon(Icons.touch_app_sharp),
                  value: _toggled_5,
                  onChanged: (bool value) {
                    setState(() {
                      _toggled_5 = value;
                    });
                  },
                  title: Text(
                    "PIN 5",
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Card(
                color: bgColor,
                elevation: 25,
                margin: EdgeInsets.fromLTRB(25, 10, 25, 10),
                child: SwitchListTile(
                  secondary: Icon(Icons.touch_app_sharp),
                  value: _toggled_6,
                  onChanged: (bool value) {
                    setState(() {
                      _toggled_6 = value;
                    });
                  },
                  title: Text(
                    "PIN 6",
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Card(
                color: bgColor,
                elevation: 25,
                margin: EdgeInsets.fromLTRB(25, 10, 25, 10),
                child: SwitchListTile(
                  secondary: Icon(Icons.touch_app_sharp),
                  value: _toggled_7,
                  onChanged: (bool value) {
                    setState(() {
                      _toggled_7 = value;
                    });
                  },
                  title: Text(
                    "PIN 7",
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Card(
                color: bgColor,
                elevation: 25,
                margin: EdgeInsets.fromLTRB(25, 10, 25, 10),
                child: SwitchListTile(
                  secondary: Icon(Icons.touch_app_sharp),
                  value: _toggled_8,
                  onChanged: (bool value) {
                    setState(() {
                      _toggled_8 = value;
                    });
                  },
                  title: Text(
                    "PIN 8",
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Card(
                color: bgColor,
                elevation: 25,
                margin: EdgeInsets.fromLTRB(25, 10, 25, 10),
                child: SwitchListTile(
                  secondary: Icon(Icons.touch_app_sharp),
                  value: _toggled_9,
                  onChanged: (bool value) {
                    setState(() {
                      _toggled_9 = value;
                    });
                  },
                  title: Text(
                    "PIN 9",
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Card(
                color: bgColor,
                elevation: 25,
                margin: EdgeInsets.fromLTRB(25, 10, 25, 10),
                child: SwitchListTile(
                  secondary: Icon(Icons.touch_app_sharp),
                  value: _toggled_10,
                  onChanged: (bool value) {
                    setState(() {
                      _toggled_10 = value;
                    });
                  },
                  title: Text(
                    "PIN 10",
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Card(
                color: bgColor,
                elevation: 10,
                margin: EdgeInsets.fromLTRB(25, 10, 25, 10),
                child: SwitchListTile(
                  secondary: Icon(Icons.touch_app_sharp),
                  value: _toggled_11,
                  onChanged: (bool value) {
                    setState(() {
                      _toggled_11 = value;
                    });
                  },
                  title: Text(
                    "PIN 11",
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      /* floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.pages),
      ), */
    );
  }
}
