import 'package:flutter/material.dart';

void main(){
  runApp(myApp());
}

class myApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // implement createState
    return MyAppState();
  }
}

class MyAppState extends State<myApp>{
  var counter=0;
  var text="Click!";
  void restartCounter(){
    setState(() {
      counter=0;
      textMessage();
    });
  }
  void clickedCounter(){
    setState(() {
      counter+=1;
      textMessage();
    });
  }

  void textMessage(){
    setState(() {
      if(counter==0){
        text="You're not clicked now";
      }
      else{
        text="You're clicked now";
      }
    });
  }
  Widget build(BuildContext context){
    return MaterialApp(
        home:Scaffold(
          appBar: AppBar(
            title: Text("My Assignment Application"),
          ),
          body:Column(
            children:<Widget> [Container(alignment: Alignment.center,
              margin: EdgeInsets.fromLTRB(5, 10, 8, 10),
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(primary: Colors.grey,
                    minimumSize: Size(30,1),
                    side: BorderSide(
                      width: 20.0,
                      color: Colors.blueGrey,

                    ))
                ,child: Text("RESTART"),
                onPressed: restartCounter,),

            ),
              Text("For restart please click!",
                style: TextStyle(fontSize: 15),),
              Padding(padding: EdgeInsets.all(50.0)),
              Container(alignment: Alignment.center,
                margin: EdgeInsets.fromLTRB(10, 200, 10, 10),
                child :ElevatedButton(
                  child: Text(text),
                  onPressed: clickedCounter,
                  style: ElevatedButton.styleFrom(
                      primary: Colors.blueGrey,
                      padding: const EdgeInsets.all(15),
                      textStyle: TextStyle(fontSize: 22),
                      alignment: Alignment.center

                  ),),

              ),
              Container(alignment: Alignment.center,
                margin: EdgeInsets.fromLTRB(0, 0, 0,40),
                child:Text(counter.toString(),
                  style: TextStyle(fontSize: 22),),),
              Text(text,
                style: TextStyle(fontSize: 17),)
            ],
          ),
        )
    );
  }
}







