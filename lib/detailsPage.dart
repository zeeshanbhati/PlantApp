import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  final heroTag;
  final plantName;


  DetailsPage({this.heroTag, this.plantName});

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  var selectedCard = 'WEIGHT';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF7A9BEE),
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(Icons.arrow_back_ios),
            color: Colors.white,
          ),
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          title: Text('Details',
              style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 18.0,
                  color: Colors.white)),
          centerTitle: true,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.more_horiz),
              onPressed: () {},
              color: Colors.white,
            )
          ],
        ),
        body: ListView(children: [
          Stack(children: [
            Container(
                height: MediaQuery.of(context).size.height - 82.0,
                width: MediaQuery.of(context).size.width,
                color: Colors.transparent),
            Positioned(
                top: 75.0,
                child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(45.0),
                          topRight: Radius.circular(45.0),
                        ),
                        color: Colors.white),
                    height: MediaQuery.of(context).size.height - 100.0,
                    width: MediaQuery.of(context).size.width)),
            Positioned(
                top: 30.0,
                left: (MediaQuery.of(context).size.width / 2) - 100.0,
                child: Hero(
                    tag: widget.heroTag,
                    child: Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(widget.heroTag),
                                fit: BoxFit.cover)),
                        height: 200.0,
                        width: 200.0))),
            Positioned(
                top: 250.0,
                left: 25.0,
                right: 25.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(widget.plantName,
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 22.0,
                            fontWeight: FontWeight.bold)),
                    SizedBox(height: 20.0),

                    SizedBox(height: 20.0),
                    Plant(widget.plantName)

                  ],
                ))
          ])
        ]));
  }
Widget Plant(String plant){

if(plant=='Apple') {
  return Container(
      margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
      height: 300.0,

      child: ListView(
        scrollDirection: Axis.vertical,

        children: <Widget>[

          _buildInfoCard('Apple_Scab'),
          SizedBox(width: 10.0),
          _buildInfoCard('Apple___Black_rot'),
          SizedBox(width: 10.0),
          _buildInfoCard('Apple___Cedar_apple_rust'),
          SizedBox(width: 10.0),
          _buildInfoCard('Apple___healthy')
        ],
      )
  );
}
else if(plant=='Blueberry'){
  return Container(
      margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
      height: 300.0,

      child: ListView(
        scrollDirection: Axis.vertical,

        children: <Widget>[

          _buildInfoCard('Blueberry_Healthy')

        ],
      )
  );
}
else if(plant=='Cherry'){
return Container(
margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
  height: 300.0,

  child: ListView(
  scrollDirection: Axis.vertical,

  children: <Widget>[

  _buildInfoCard('Cherry_(including_sour)___Powdery_mildew'),
  SizedBox(width: 10.0),
  _buildInfoCard('Cherry_(including_sour)___healthy'),

  ],
  )
  );
}
else if(plant=='Corn'){
  return Container(
      margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
      height: 300.0,

      child: ListView(
        scrollDirection: Axis.vertical,

        children: <Widget>[

          _buildInfoCard('Corn_(maize)___Cercospora_leaf_spot Gray_leaf_spot'),
          SizedBox(width: 10.0),
          _buildInfoCard('Corn_(maize)___Common_rust_'),
          
          SizedBox(width: 10.0),
          _buildInfoCard('Corn_(maize)___Northern_Leaf_Blight'),
          SizedBox(width: 10.0),
          _buildInfoCard('Corn_(maize)___healthy')
        ],
      )
  );
}
else if(plant=='Grapes'){
  return Container(
      margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
      height: 300.0,

      child: ListView(
        scrollDirection: Axis.vertical,

        children: <Widget>[

          _buildInfoCard('Grape___Black_rot'),
          SizedBox(width: 10.0),
          _buildInfoCard('Grape___Esca_(Black_Measles)'),

          SizedBox(width: 10.0),
          _buildInfoCard('Grape___Leaf_blight_(Isariopsis_Leaf_Spot)'),
          SizedBox(width: 10.0),
          _buildInfoCard('Grape___healthy')
        ],
      )
  );
}
else if(plant=='Orange'){
  return Container(
      margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
      height: 300.0,

      child: ListView(
        scrollDirection: Axis.vertical,

        children: <Widget>[

          _buildInfoCard('Orange___Haunglongbing_(Citrus_greening)'),


        ],
      )
  );
}
else if(plant=='Peach'){
  return Container(
      margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
      height: 300.0,

      child: ListView(
        scrollDirection: Axis.vertical,

        children: <Widget>[

          _buildInfoCard('Peach___Bacterial_spot'),
          SizedBox(width: 10.0),
          _buildInfoCard('Peach___healthy'),
        ],
      )
  );
}
else if(plant=='Potato'){
  return Container(
      margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
      height: 300.0,

      child: ListView(
        scrollDirection: Axis.vertical,

        children: <Widget>[

          _buildInfoCard('Potato___Early_blight'),
          SizedBox(width: 10.0),
          _buildInfoCard('Potato___Late_blight'),
          SizedBox(width: 10.0),
          _buildInfoCard('Potato___healthy'),

        ],
      )
  );
}
else if(plant=='Red Pepper')
  {
    return Container(
        margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
        height: 300.0,

        child: ListView(
          scrollDirection: Axis.vertical,

          children: <Widget>[

            _buildInfoCard('Pepper_bell___Bacterial_spot'),
            SizedBox(width: 10.0),
            _buildInfoCard('Pepper_bell___healthy'),

          ],
        )
    );
  }
else if(plant=='Raspberry'){
  return Container(
      margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
      height: 300.0,

      child: ListView(
        scrollDirection: Axis.vertical,

        children: <Widget>[

          _buildInfoCard('Raspberry___healthy'),

        ],
      )
  );
}
else if(plant=='Soyabeans'){
  return Container(
      margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
      height: 300.0,

      child: ListView(
        scrollDirection: Axis.vertical,

        children: <Widget>[

          _buildInfoCard('Soyabean___healthy'),

        ],
      )
  );
}
else if(plant=='Squash'){
  return Container(
      margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
      height: 300.0,

      child: ListView(
        scrollDirection: Axis.vertical,

        children: <Widget>[

          _buildInfoCard('Squash___Powdery_mildew'),

        ],
      )
  );
}
else if(plant=='Strawberry')
{
  return Container(
      margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
      height: 300.0,

      child: ListView(
        scrollDirection: Axis.vertical,

        children: <Widget>[

          _buildInfoCard('Strawberry___Leaf_scorch'),
          SizedBox(width: 10.0),
          _buildInfoCard('Strawberry___healthy')

        ],
      )
  );

}
else if(plant=='Tomato'){
  return Container
    (
      margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
      height: 300.0,

      child: ListView(
        scrollDirection: Axis.vertical,

        children: <Widget>[

          _buildInfoCard('Tomato___Bacterial_spot'),
          SizedBox(width: 10.0),
          _buildInfoCard('Tomato___Early_blight'),
          SizedBox(width: 10.0),
          _buildInfoCard('Tomato___Late_blight'),
          SizedBox(width: 10.0),
          _buildInfoCard('Tomato___Leaf_Mold'),
          SizedBox(width: 10.0),
          _buildInfoCard('Tomato___Septoria_leaf_spot'),
          SizedBox(width: 10.0),
          _buildInfoCard('Tomato___Spider_mites_Two-spotted_spider_mite'),
          SizedBox(width: 10.0),
          _buildInfoCard('Tomato___Target_Spot'),
          SizedBox(width: 10.0),
          _buildInfoCard('Tomato___Tomato_Yellow_Leaf_Curl_Virus'),
          SizedBox(width: 10.0),
          _buildInfoCard('Tomato___Tomato_mosaic_virus'),
          SizedBox(width: 10.0),
          _buildInfoCard('Tomato___healthy')
        ],
      )
  );
}
}
  Widget _buildInfoCard(String cardTitle) {

    return InkWell(
      onTap: () {
        selectCard(cardTitle);
        
        
      },
      child: AnimatedContainer(
        margin: EdgeInsets.fromLTRB(0, 4, 0, 4),
        duration: Duration(milliseconds: 500),
        curve: Curves.easeIn,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: cardTitle == selectedCard ? Color(0xFF7A9BEE) : Colors.white,
          border: Border.all(
            color: cardTitle == selectedCard ? 
            Colors.transparent :
            Colors.grey.withOpacity(0.3),
            style: BorderStyle.solid,
          width: 0.75
          ),
          
        ),
        height: 100.0,
        width: 100.0,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 38.0, left: 15.0),
              child: Text(cardTitle,
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 17.0,
                    
                    color:
                        cardTitle == selectedCard ? Colors.white : Colors.black,
                  )),
            ),

          ]
        )
      )
    );
  }

  selectCard(cardTitle) {
    setState(() {
      selectedCard = cardTitle;

    });
  }
}
