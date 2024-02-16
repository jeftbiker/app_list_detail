
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesDemo  extends StatefulWidget {
  
   SharedPreferencesDemoState createState() => SharedPreferencesDemoState();
 }

 class SharedPreferencesDemoState extends State<SharedPreferencesDemo > {
  
  late String _username;
  late bool _rememberMe;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();    
    _loadPreferences();
  }  
  
  void _loadPreferences() async {
    final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
    setState(() {
      //_username = _prefs.value('username') ?? '';
      //_rememberMe = _prefs.getBool('rememberMe') ?? false;
    });
  }



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Shared Preferences Demo'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              TextField(
                decoration: InputDecoration(
                  labelText: 'Username',
                  hintText: 'Enter your username',
                ),
                onChanged: (value) {
                  setState(() {
                    _username = value;
                  });
                },
              ),
              CheckboxListTile(
                title: Text('Remember me'),
                value: _rememberMe,
                onChanged: (value) {
                  setState(() {
                    _rememberMe = value!;
                  });
                },
              ),
              ElevatedButton(
                child: Text('Save'),
                onPressed: () async {
                  final prefs = await SharedPreferences.getInstance();
                  prefs.setString('username', _username);
                  prefs.setBool('rememberMe', _rememberMe);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
  
 }
  
 



