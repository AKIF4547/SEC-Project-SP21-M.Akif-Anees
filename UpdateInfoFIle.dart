import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class UpdateInfo extends StatefulWidget {
  @override
  _UpdateInfoState createState() => _UpdateInfoState();
}

class _UpdateInfoState extends State<UpdateInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Update Info'),
        centerTitle: true,
        backgroundColor: Colors.blue[500],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 8),
        child: Stack(
          children: <Widget>[
            ListView(
              children: <Widget>[
                addPropertyTextFields('House', Icons.home),
                SizedBox(
                  height: 8,
                ),
                addPropertyTextFields('5 marla', Icons.landscape),
                SizedBox(
                  height: 8,
                ),
                addPropertyTextFields(
                    'Shumaali Moh. Jhelum', Icons.pin_drop),
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
                      hintText: "1,00,000",
                      hintStyle: TextStyle(
                        color: Colors.grey,
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RaisedButton.icon(
                    shape: StadiumBorder(),
                    onPressed: () {
                      // Toast.show('Property Updated!', context);
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.update),
                    label: Text("Update Info"),
                    color: Colors.blue[500],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
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
