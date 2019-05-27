import 'package:flutter/material.dart';

class QuestionPage extends StatefulWidget {
  QuestionPage({Key key}) : super(key: key);

  _QuestionPageState createState() => _QuestionPageState();
}

class _QuestionPageState extends State<QuestionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: new FloatingActionButton(
        onPressed: (){

        },
        child: new Icon(Icons.search),
        backgroundColor: Colors.redAccent,
      ),
      body: new Container(
        child: new Stack(
          children: <Widget>[
            new Column(
              children: <Widget>[
                new Container(
                  color: Colors.redAccent,
                  height: 100,
                  width: MediaQuery.of(context).size.width,
                  child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 30),
                        child: new Row(
                          mainAxisSize: MainAxisSize.max,
                          children: <Widget>[
                         
                                
                                  
                                     new ListTile(
                                       dense: false,
                                      trailing: new Row(
                                        children: <Widget>[
                                          new Icon(Icons.monetization_on,size: 34,),
                                          new Text("500",style: new TextStyle(fontSize: 22),)
                                        ],
                                      ),
                                      
                                    ),
                                  
                                
                              
                           
                            
                            Align(alignment: Alignment.centerRight,
                            child: new Text("data"),)
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
