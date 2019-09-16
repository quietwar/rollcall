  
import 'package:Roll_Call/login%20/create_account_button.dart';
import 'package:Roll_Call/login%20/login_screen.dart';
//import 'package:Roll_Call/register/register_screen.dart';
import 'package:flutter/material.dart';

import '../user_repository.dart';

class LandingPage extends StatelessWidget {
//  var routes = <String, WidgetBuilder> {
//    "/signup_page": (BuildContext context) => new SignupPage()
//  };
  //int value; 
UserRepository get _userRepository => _userRepository;
static const PrimaryColor = const Color(0xffffdf00);


  @override
  Widget build(BuildContext context) {
    //hero image
    var decoratedBox = new DecoratedBox(
        decoration: new BoxDecoration(
          image: new DecorationImage(
            fit: BoxFit.fitWidth,
            image: new AssetImage('assets/logos/black_student.png'),
          ),
          shape: BoxShape.circle,
        )
    );


    // hero top left
    var hero = new Hero(
      tag: 'hero-tag-llama',
      child: decoratedBox,
    );

    var _children = <Widget>[
      new Center(
        child: new Container(
          height: 150.0,
          width: 150.0,
          child: hero,
        ),
      ),
    ];

    var decoratedBox2 = new DecoratedBox(

        decoration: new BoxDecoration(
          image: new DecorationImage(
            fit: BoxFit.fitWidth,
            image: new AssetImage('assets/logos/black_wand.png'),
          ),
          shape: BoxShape.circle,
        )
    );


    // hero top left
    var hero2 = new Hero(
      tag: 'hero-tag-llama2',
      child: decoratedBox2,
    );

    var _children2 = <Widget>[
      new Center(
        child: new Container(
          height: 150.0,
          width: 150.0,
          child: hero2,
        ),
      ),
    ];


    return new Stack(
      children: <Widget>[
        new Column(
          children: <Widget>[
            Expanded(
            child: Material(
              color:(PrimaryColor),
              // ignore: invocation_of_non_function
              child: InkWell(
                 onTap: ()=>  CreateAccountButton(userRepository: _userRepository),
                 //Navigator.of(context).push(
                //   new MaterialPageRoute(builder: (
                //     BuildContext context) => new RegisterScreen( userRepository:))),
                child: Center(
                  child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: _children,
                      ),
                  ),
                ),
              ),
            )
            ),
            Material(
              color:  Colors.blueGrey,
              child: Center(
                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Center(
                    child:  Text("Select Role" ,
                      style:  TextStyle(fontSize: 25.0),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
                child: Material(
                  color: Colors.deepOrangeAccent,
                  // ignore: invocation_of_non_function
                  child: InkWell(
                    onTap: ()=> //CreateAccountButton(userRepository: _userRepository),
                     Navigator.of(context).push(
                       MaterialPageRoute(
                         builder: (BuildContext context) => LoginScreen(userRepository: _userRepository),
                         ),
                    //   child: 
                    //   Center(
                    //     child: Container(
                    //         child: Column(
                    //           mainAxisAlignment: MainAxisAlignment.center,
                    //         children: _children2,
                    //       )
                    //   ),
                    // ),
                     ),
                )
            ),
            )],
        )
      ],
    );
  }
}