import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class AddProperty extends StatefulWidget {
  @override
  _AddPropertyState createState() => _AddPropertyState();
}

class _AddPropertyState extends State<AddProperty> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Property'),
        backgroundColor: Colors.blue[900],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 8),
        child: Stack(
          children: <Widget>[
            ListView(children: <Widget>[
              addPropertyTextFields('Enter Property Type', Icons.home),
              SizedBox(
                height: 8,
              ),
              addPropertyTextFields('Area', Icons.landscape),
              SizedBox(
                height: 8,
              ),
              addPropertyTextFields('Address', Icons.pin_drop),
              SizedBox(
                height: 8,
              ),
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.apps,
                      color: Colors.grey,
                    ),
                    enabledBorder: const OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.grey)),
                    hintText: "Rent",
                    hintStyle: TextStyle(
                      color: Colors.grey,
                    )),
              ),
              RaisedButton.icon(
                onPressed: () {
                  // Toast.show('Property Added!', context);
                  Navigator.pop(context);
                },
                icon: Icon(Icons.add),
                label: Text("Add Property"),
                color: Colors.blue[500],
              ),
            ]),
          ],
        ),
      ),
    );
  }

  Widget addPropertyTextFields(String inputText, IconData fieldIcon) {
    return TextField(
      keyboardType: TextInputType.text,
      autofocus: false,
      decoration: InputDecoration(
          prefixIcon: Icon(
            fieldIcon,
            color: Colors.grey,
          ),
          enabledBorder: const OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.grey)),
          hintText: inputText,
          hintStyle: TextStyle(
            color: Colors.grey,
          )),
    );
  }
}
