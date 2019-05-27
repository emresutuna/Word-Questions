import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:word_questions/QuestionPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
      
    routes: {
      
      '/questionPage': (BuildContext context) => new QuestionPage(),
      
      
      
    },
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var usernameController = new TextEditingController();
  String username;
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await showDialog<String>(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) => new AlertDialog(
              title: new Text(
                "Kullanıcı adı giriniz",
                textAlign: TextAlign.center,
              ),
              content: new Container(
                alignment: Alignment.center,
                height: 100,
                width: 200,
                child: new Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 30.0),
                      child: new TextField(
                        controller: usernameController,
                        onChanged: (val) {
                          setState(() {
                            username = val;
                          });
                        },
                        decoration: new InputDecoration(
                          labelText: "Kullanıcı Adı",
                          hintText: "Kara Gergedan",
                          labelStyle: new TextStyle(color: Colors.black),
                          fillColor: Colors.white,
                          filled: true,
                          focusedBorder: new OutlineInputBorder(
                              borderRadius: new BorderRadius.circular(20),
                              borderSide: new BorderSide(
                                  color: Colors.black, width: 1.5)),
                          border: new OutlineInputBorder(
                            borderRadius: new BorderRadius.circular(20),
                            borderSide: new BorderSide(
                              color: Colors.black,
                              width: 0.5,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              actions: <Widget>[
                FlatButton(
                  child: new Text(
                    "OK",
                    style: new TextStyle(color: Colors.white),
                  ),
                  color: Colors.redAccent,
                  onPressed: () {
                    if (username.toString().length < 1 &&
                        username.toString().isEmpty) {
                    } else {
                      Navigator.pop(context);
                    }
                  },
                )
              ],
            ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: new Text("Word Questions"),
          centerTitle: true,
          backgroundColor: Colors.redAccent,
        ),
        body: username.toString().length > 1
            ? new SafeArea(
                bottom: true,
                top: true,
                left: true,
                right: true,
                child: new Container(
                  height: MediaQuery.of(context).size.height,
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 0.0),
                    child: Center(
                      child: SingleChildScrollView(
                        child: new Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            new FlutterLogo(
                              size: 100,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 20.0),
                              child: new Container(
                                width: 250,
                                height: 70,
                                decoration: new BoxDecoration(
                                  color: Colors.redAccent,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: FlatButton(
                                  
                                  child: new Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Expanded(
                                        child: new Text(
                                          "Hemen Oyna",
                                          style: new TextStyle(
                                              fontSize: 20,
                                              color: Colors.white),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 20.0),
                                        child: new Icon(
                                          Icons.play_arrow,
                                          size: 30,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                  onPressed: () {
                                    Navigator.pushNamed(context, "/questionPage");
                                  },
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10.0),
                              child: new Container(
                                  width: 250,
                                  height: 70,
                                  decoration: new BoxDecoration(
                                    color: Colors.redAccent,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: FlatButton(
                                      onPressed: () {},
                                      child: new Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Expanded(
                                            child: new Text(
                                              "Takımla Oyna",
                                              style: new TextStyle(
                                                  fontSize: 20,
                                                  color: Colors.white),
                                              textAlign: TextAlign.center,
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 20.0),
                                            child: new Icon(
                                              Icons.people,
                                              color: Colors.white,
                                              size: 30,
                                            ),
                                          ),
                                        ],
                                      ))),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10.0),
                              child: new Container(
                                width: 250,
                                height: 70,
                                decoration: new BoxDecoration(
                                  color: Colors.redAccent,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: FlatButton(
                                  onPressed: () {},
                                  child: new Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Expanded(
                                        child: new Text(
                                          "Soru Paylaş",
                                          style: new TextStyle(
                                              fontSize: 20,
                                              color: Colors.white),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.centerRight,
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(left: 0.0),
                                          child: new Icon(
                                            Icons.share,
                                            color: Colors.white,
                                            size: 30,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              )
            : new Container());
  }
}
