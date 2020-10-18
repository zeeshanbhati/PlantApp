import 'dart:io';
import 'package:flutterapp/Camscreen.dart';
import 'package:flutterapp/results.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/splashScreen.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:share/share.dart';
import 'detailsPage.dart';
import 'package:image_picker/image_picker.dart';
import 'package:tflite/tflite.dart';
import 'package:async/async.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  File _image;

  Future getImageFromGallery() async {
    final navigator = Navigator.of(context);
    await navigator.push(
      MaterialPageRoute(
        builder: (context) => Res(),
      ),
    );
  }

  getImageFromCamera(BuildContext context) async {
    final navigator = Navigator.of(context);
    await navigator.push(
      MaterialPageRoute(
        builder: (context) => Cam(),
      ),
    );
  }

  share(BuildContext context) {
    final RenderBox box = context.findRenderObject();
    Share.share("Check Out this App,Link will be available Soon!",
        subject: "Plant Disease Identifier",
        sharePositionOrigin: box.localToGlobal(Offset.zero) & box.size);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue, elevation: 0),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              child: Container(),
              decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/Drawer.jpg')),
                color: Colors.blue,
              ),
            ),
            ListTile(
              trailing: Icon(Icons.star),
              title: Text(
                'Rate Us!',
                style: TextStyle(
                    fontFamily: 'Montserrat', fontWeight: FontWeight.bold),
              ),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            Divider(),
            ListTile(
              trailing: Icon(Icons.share),
              title: Text(
                'Share This app',
                style: TextStyle(
                    fontFamily: 'Montserrat', fontWeight: FontWeight.bold),
              ),
              onTap: () {
                share(context);
              },
            ),
            Divider(),
            Container(
              child: Align(
                alignment: FractionalOffset.bottomCenter,
              ),
              color: Colors.white,
              width: double.infinity,
              height: 0.8,
            ),
            Container(
                padding: EdgeInsets.all(10),
                height: 100,
                child: Align(
                    alignment: FractionalOffset.bottomCenter,
                    child: Text(
                      "V 1.0.0",
                      style: TextStyle(
                          color: Colors.red,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold),
                    ))),
          ],
        ),
      ),
      backgroundColor: Colors.blue,
      body: ListView(
        children: <Widget>[
          SizedBox(height: 25.0),
          Padding(
            padding: EdgeInsets.only(left: 40.0),
            child: Row(
              children: <Widget>[
                Icon(Icons.ac_unit_outlined,size: 30,color: Colors.tealAccent,),
                SizedBox(width:5,height: 5,),
                Text('Plant Disease Identifier',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25.0)),
              ],
            ),
          ),
          SizedBox(height: 40.0),
          Container(
            height: MediaQuery.of(context).size.height - 178.0,
            decoration: BoxDecoration(
              color: Colors.white,

            ),
            child: ListView(
              primary: false,
              padding: EdgeInsets.only(left: 25.0, right: 20.0),
              children: <Widget>[
                Padding(
                    padding: EdgeInsets.only(top: 45.0),
                    child: Container(
                        height: MediaQuery.of(context).size.height - 400.0,
                        child: ListView(children: [
                          _CardPlantItem('assets/images/apple.jpg', 'Apple', 'assets/images/blueberry.jpg', 'Blueberry'),
                          _CardPlantItem('assets/images/cherry.jpg', 'Cherry', 'assets/images/Corn.jpg', 'Corn'),
                          _CardPlantItem('assets/images/grape.jpg', 'Grapes','assets/images/orange.jpg', 'Orange'),
                          _CardPlantItem('assets/images/peach.jpg', 'Peach','assets/images/Potato.jpg', 'Potato'),
                          _CardPlantItem('assets/images/Raspberry.jpg', 'Raspberry','assets/images/Red Pepper.jpg', 'Red Pepper'),
                          _CardPlantItem('assets/images/soyabean.jpg', 'Soyabeans','assets/images/squash.jpg', 'Squash'),
                          _CardPlantItem('assets/images/strawberry.jpg', 'Strawberry','assets/images/Tomato.jpg', 'Tomato'),
                        ]
                        )
                    )
                ),
                Container(
                  child: Row(

                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Column(
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 60, 0, 0),

                            height: 65.0,
                            width: 66.0,
                            decoration: BoxDecoration(

                              border: Border.all(
                                  color: Colors.green,
                                  style: BorderStyle.solid,
                                  width: 5.0),
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: Center(
                              child: ButtonTheme(
                                height: 200,
                                child: new RaisedButton(
                                  color: Colors.white,
                                  highlightColor: Colors.cyan,
                                  shape: new RoundedRectangleBorder(
                                    borderRadius: new BorderRadius.circular(20.0),
                                  ),
                                  onPressed: () {
                                    getImageFromCamera(context);
                                    setState(() {
                                      Colors.red;
                                    });
                                    print('Camera button pressed');
                                  },
                                  child: new Icon(LineAwesomeIcons.camera),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 10,),
                          Text("Camera",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)
                        ],
                      ), //Camera Button



                      /*Column(
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 60, 0, 0),
                            height: 65.0,
                            width: 60.0,
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.green,
                                  style: BorderStyle.solid,
                                  width: 1.0),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Center(
                              child: ButtonTheme(
                                height: 200,
                                child: new RaisedButton(
                                  color: Colors.white,
                                  highlightColor: Colors.cyan,
                                  splashColor: Colors.yellow,
                                  shape: new RoundedRectangleBorder(
                                    borderRadius: new BorderRadius.circular(10.0),
                                  ),
                                  onPressed: () {
                                    getImageFromGallery();
                                    print('Gallery button pressed');
                                  },
                                  child: new Icon(Icons.filter),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 10,),
                          Text("Gallery",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)
                        ],
                      ), *///Gallery Button Code for Gallery
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }




  Widget _CardPlantItem(String imgPath1,String plantName1,String imgPath2,String plantName2,){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Stack(
          children:[

          GestureDetector(
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) =>
                      DetailsPage(heroTag: imgPath1, plantName: plantName1)));
            },
            child: Container(
              height: 150,
              width: 150,
              child: Card(
                  semanticContainer: true,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  color: Colors.red,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  elevation: 3.0,
                  child: Image.asset(
                    imgPath1,
                    fit: BoxFit.cover,
                  )),
            ),
          ),
           Positioned(
             left:20,
               bottom: 20,
               child: Text(plantName1,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),),)
        ]),
        SizedBox(height: 2,width: 20,),
        Stack(
            children:[

              GestureDetector(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) =>
                          DetailsPage(heroTag: imgPath2, plantName: plantName2)));
                },
                child: Container(
                  height: 150,
                  width: 150,
                  child: Card(
                      semanticContainer: true,
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      color: Colors.red,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      elevation: 3.0,
                      child: Image.asset(
                        imgPath2,
                        fit: BoxFit.cover,
                      )),
                ),
              ),
              Positioned(
                left:20,
                bottom: 20,
                child: Text(plantName2,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),),)
            ]),

      ],
    );

  }
}
