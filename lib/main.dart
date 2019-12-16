import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(App());

class App extends StatelessWidget {

  int counter;
  // String sentence;
  App(){
    this.counter = 0;
    // this.sentence = "veiw my profile";
  }
  void profile(){
    // this.sentence.toString();
    print("veiw my profile");
  }
  void increasment(){
    this.counter++;
    print(this.counter);
  }
  void decreasment(){
    this.counter--;
    print(this.counter);
  }
  void logEven(String event){
    print("Press button"+event);
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Counter App"),
          centerTitle: true,
          actions: <Widget>[
            FlatButton(
              onPressed: (){ profile();},
              child: Icon(
                Icons.person,
                color:Colors.white,
              ),
            )
          ],
        ),
        body: Container(
          padding:  EdgeInsets.all(70),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              RaisedButton(
                 onPressed: () =>{
                 increasment(),
                 logEven("Increasment")
                 },
                 color: Colors.pink,
                child:Text("Increas++",style: TextStyle(color: Colors.white),),
              ),
              RaisedButton(
                onPressed: ()=>{
                  decreasment(),
                  logEven("Decreasment")
                  },
                color: Colors.green,
                child:Text("Decreas--",style: TextStyle(color: Colors.white),),
              )
            ],
          ),
        ),
      ),
    );
  }
}
