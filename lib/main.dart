import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => {
  runApp(MaterialApp(
    title: "Home flutter",
      theme: new ThemeData(
        primarySwatch: Colors.cyan,
        primaryColor: const Color(0xFF00bcd4),
        accentColor: const Color(0xFFf3f4f3),
        canvasColor: const Color(0xFFe8efe7),
        fontFamily: 'Roboto',
      ),
    home: App()
  ))
};

// ElevatedButton(
// style: raisedButtonStyle,
// onPressed: () { },
// child: Text('Looks like a RaisedButton'),
// )
class App extends StatelessWidget{

  void loginGoogle(){
    print("Google");
  }
  void loginApple(){
    print("Apple");
  }
  void loginNomal(){
    print("loginNomal");
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Login'),
        ),
      ),
      body: new Center (
          child: new Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        labelText: 'Enter your username',
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                    child: TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        labelText: 'Enter your password',
                      ),
                    ),
                  ),
                  new OutlinedButton(
                    onPressed: loginNomal,
                    child: new Text("Submit",style: TextStyle(color: Colors.black),),
                    style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      backgroundColor: Colors.grey,
                    ),
                  ),
                  new OutlinedButton(
                    onPressed: loginApple,
                    child: new Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Image.asset('assets/images/appleIcon.jpg',width: 30, height: 30,)
                        ,
                        new Text("Login with Apple",style: TextStyle(color: Colors.black),),
                      ],
                    ),
                    style: OutlinedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                    ),
                  ),
                  new OutlinedButton(
                    onPressed: loginGoogle,
                    child: new Row(
                         mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Image.asset('assets/images/googleIcon.jpg',width: 30, height: 30,),
                          new Text("Login with Google",style: TextStyle(color: Colors.black,),),
                        ],
                    ),
                    style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      backgroundColor: Colors.white,
                    ),
                  ),

                ],
              )
            ],
          ),
      )
      // floatingActionButton: FloatingActionButton(
      //   tooltip: 'floatingActionButton',
      //   onPressed: null,
      //   child: Icon(Icons.add),
      // ),
    );
  }
}
