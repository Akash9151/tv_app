import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        iconTheme: IconThemeData(
          color: Colors.white, //change your color here
        ),
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text('Settings',
          style: GoogleFonts.bitter(fontSize: 20),),
        actions: <Widget>[],
      ),

      body: ListView(
          children: <Widget>[
            CheckboxListTile(
              value: true,
              title: Text("This is a CheckBoxPreference"),
              onChanged: (value) {},
            ),
            SwitchListTile(
              value: false,
              title: Text("This is a SwitchPreference"),
              onChanged: (value) {},
            ),
            ListTile(
              title: Text("Log Out"),
              subtitle: Text("Log out of account"),
              onTap: (){},
            ),
          ]
      ),

    );
  }
}
