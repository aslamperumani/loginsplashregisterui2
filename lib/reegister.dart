import 'package:flutter/material.dart';
import 'package:loginsplashregister/myLogin.dart';

class mYhome extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Register"),
          leading: new IconButton(
            icon: new Icon(Icons.arrow_back),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
        body: Container(
          decoration: const BoxDecoration(image: DecorationImage(
              fit: BoxFit.fill, image: AssetImage("assets/ooybg.jpg"))),

          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                    "REGISTER",
                    style: TextStyle(fontSize: 30, color: Colors.white),
                  ),),


                const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: TextField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.contact_page_rounded),
                        hintText: "DISPLAY NAME", labelText: "DISPLAY NAME",
                        border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20)))),
                    style: TextStyle(fontSize: 20, color: Colors.black54),
                  ),
                ),
                const Padding(

                  padding: EdgeInsets.all(20.0),
                  child: TextField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.mail),
                        hintText: "EMAIL", labelText: "EMAIL",
                        border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20)))),
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                ),

                const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: TextField(
                    obscuringCharacter: "*",
                    obscureText: true,
                    decoration:
                    InputDecoration(
                        prefixIcon: Icon(Icons.lock),
                        hintText: "PASSWORD",
                        labelText: "PASSWORD",
                        border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20)))
                    ),
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                ),
                MaterialButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25)),
                  minWidth: 380,
                  height: 60,
                  onPressed: () {},
                  child: const Text("CREATE ACCOUNT", style: TextStyle(fontSize: 20),),
                  textColor: Colors.white,
                  color: Colors.blue,
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 254.0),
                  child: SizedBox(
                    //height: 55,
                    //width: 100,
                    child: TextButton(onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => mylogin()));

                    }, child: const Text("Already Registered? Login Here")),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

}