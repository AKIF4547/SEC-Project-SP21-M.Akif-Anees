import 'package:flutter/material.dart';
class Tenant extends StatefulWidget {
  @override
  _TenantFile createState() => _TenantFile();
}

class _TenantFile extends State<Tenant> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Tenant Info'),
          centerTitle: true,
          backgroundColor: Colors.blue[500],
        ),
        body:  Stack(
          children: <Widget>[
            Container(
              color: Colors.blue.withOpacity(0.3),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12.0),
              child: Align(
                alignment: Alignment.topCenter,
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/tenant.jpg'),
                  radius: 70,
                ),
              ),
            ),
            Positioned(
              top: 200,
              left: 30,
              child: Row(
                children: <Widget>[
                  infoLeading('Name'),
                  Text(
                    "M. Akif Anees",
                    style: TextStyle(fontSize: 25),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 240,
              left: 30,
              child: Row(
                children: <Widget>[
                  infoLeading('CNIC'),
                  Text(
                    "37303-77072811-1",
                    style: TextStyle(fontSize: 25),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 315,
              left: 30,
              child: Row(
                children: <Widget>[
                  infoLeading('Address'),
                  Text(
                    "Police Foundation Rwp",
                    style: TextStyle(fontSize: 25),
                  ),
                ],
              ),
            ),
           
            Positioned(
              top: 280,
              left: 30,
              child: Row(
                children: <Widget>[
                  infoLeading('Contact'),
                  Text(
                    "0311-8413366",
                    style: TextStyle(fontSize: 25),
                  ),
                ],
              ),
            ),
          ],
        ),
    );
  }

  Widget infoLeading(String inputHeadingText) {
    return Text(
      inputHeadingText + ": ",
      style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
    );
  }

  }
