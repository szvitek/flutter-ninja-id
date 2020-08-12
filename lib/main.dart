import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: NinjaCard()
  ));
}
class NinjaCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('Ninja ID Card'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0, // remove drop shadow
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('images/thumb.jpg'),
                radius: 40
              ),
            ),
            Divider(
              height: 80,
              color: Colors.grey[800]
            ),
            Text(
              'NAME',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2
              ),
            ),
            SizedBox(height: 10,), // add 10px transparent box (instead of useing padding)
            Text(
              'Chun-Li',
              style: TextStyle(
                color: Colors.amberAccent[200],
                letterSpacing: 2,
                fontSize: 28,
                fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 30), // add 10px transparent box (instead of useing padding)
            Text(
              'CURRENT NINJA LEVEL',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2
              ),
            ),
            SizedBox(height: 10,), // add 10px transparent box (instead of useing padding)
            Text(
              '8',
              style: TextStyle(
                color: Colors.amberAccent[200],
                letterSpacing: 2,
                fontSize: 28,
                fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 30),
            Row(
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.grey[400]
                ),
                SizedBox(width: 10,),
                Text(
                  'chun.li@ninja.net',
                  style: TextStyle(
                    color: Colors.grey[400],
                    letterSpacing: 1,
                    fontSize: 18,
                  ),
                )
              ],
            )
          ],
        ),
      )
    );
  }
}