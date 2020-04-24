import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:moPass/models/menu_data.dart';
import 'package:moPass/screens/directory_screen.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginScreen extends StatefulWidget {

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  static final double kBorderRadius = 8.0;

  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  String _errorMsg = '';
  bool _loading = false;

  void _login(String token) {
    setState(() => _loading = false);
    if (token != null) {
      SharedPreferences.getInstance().then((prefs) => prefs.setString('token', token));
    }
    final MenuDataProvider menu = Provider.of<MenuDataProvider>(context);
    menu.updateWithReq(Dio().get('http://localhost:3000/api/dishes'));

    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => DirectoryScreen()
    ));
  }

  @override
  void initState() {
    super.initState();
    SharedPreferences.getInstance().then((prefs) {
      String token = prefs.getString('token');
      if (token != null && token.isNotEmpty) {
        setState(() => _loading = true);
        Future.delayed(Duration(seconds: 1), () => _login(null));
      }
    });
  }

  void _onSubmit() async {
    if (_emailController.text == 'skip') {
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => DirectoryScreen()));
    }
    if (_emailController.text.isEmpty || _passwordController.text.isEmpty) {
      setState(() => _errorMsg = 'Username and password must not be empty');
    } else {
      setState(() => _loading = true);
      Future.delayed(Duration(seconds: 1), () {
        if (_emailController.text == 'email' && _passwordController.text == 'password') {
          _login('tokenize');
        } else {
          setState(() {
            _loading = false;
            _errorMsg = 'Incorrect username & password combo';
          });
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 60.0),
            padding: EdgeInsets.symmetric(horizontal: 83.0),
            child: Image(
              image: AssetImage('assets/icons/nomi-white-withword.png'), 
              color: Colors.white,
            )
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.0),
            child: Form(
              key: _formKey,
              child: Column(children: <Widget>[
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.only(bottom: 5.0),
                  padding: EdgeInsets.only(left: 4.0),
                  child: Text(_errorMsg, style: TextStyle(
                    color: Colors.red,
                    fontSize: 12.0,
                  )),
                ),
                Container(
                  height: 48.0,
                  child: TextFormField(
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                    controller: _emailController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.zero,
                      hintStyle: TextStyle(
                        color: Color.fromRGBO(141, 141, 141, 1.0),
                        fontSize: 18.0,
                      ),
                      hintText: 'Username or Email',
                      fillColor: Color.fromRGBO(48, 48, 48, 1.0),
                      filled: true,
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(kBorderRadius)),
                    ),
                  )
                ),
                Container(
                  height: 48.0,
                  margin: EdgeInsets.only(top: 16.0),
                  child: TextFormField(
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                    controller: _passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.zero,
                      hintStyle: TextStyle(
                        color: Color.fromRGBO(141, 141, 141, 1.0),
                        fontSize: 18.0,
                      ),
                      hintText: 'Password',
                      fillColor: Color.fromRGBO(48, 48, 48, 1.0),
                      filled: true,
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(kBorderRadius)),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 16.0), 
                  child: SizedBox(
                    height: 48.0,
                    width: double.infinity,
                    child: RaisedButton(
                      color: Colors.white,
                      disabledColor: Color.fromRGBO(224, 224, 224, 1.0),
                      // disabledTextColor: ,
                      padding: EdgeInsets.zero,
                      child: Stack(children: [
                        Container(
                          width: double.infinity,
                          alignment: Alignment.center,
                          child: Text('Let\'s Go!', 
                            style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold)
                          )
                        ),
                        Container(
                          alignment: Alignment.centerRight,
                          padding: EdgeInsets.only(right: 10.0),
                          child: Visibility(
                            visible: _loading,
                            child: CupertinoActivityIndicator(animating: _loading),
                          ),
                        )
                      ]),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(kBorderRadius)
                      ),
                      onPressed: _loading? null: _onSubmit,
                    )
                  )
                ),
              ]),
            )
          ),
          Container(
            child: Divider(color: Colors.white, thickness: 1.0),
            margin: EdgeInsets.only(left: 20.0, right: 20.0, top: 60.0, bottom: 22.0),
          ),
          Container(
            alignment: Alignment.center,
            child: Text('Request signup with your operator.', 
              style: TextStyle(fontSize: 14.0, color: Colors.white),
            )
          )
        ]
      )
    );
  }
}