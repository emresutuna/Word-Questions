import 'package:flutter/material.dart';
class QuestionPage extends StatefulWidget {
  QuestionPage({Key key}) : super(key: key);

  _QuestionPageState createState() => _QuestionPageState();
}

class _QuestionPageState extends State<QuestionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                         padding: const EdgeInsets.only(top:30),
                         child: new Row(
                           children: <Widget>[

 Padding(padding: const EdgeInsets.only(top:00),child: new Icon(Icons.monetization_on,size: 34,)),
                         Padding(
                           padding: const EdgeInsets.only(top:00.0),
                           child: new Text("500",style: new TextStyle(fontSize: 24),),
                         )
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