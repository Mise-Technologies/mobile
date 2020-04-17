import 'package:flutter/material.dart';
import 'package:moPass/screens/directory_screen.dart';

class LoginScreen extends StatefulWidget {

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  String _errorMsg = '';

  static final double kBorderRadius = 8.0;

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
                    decoration: InputDecoration.collapsed(
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
                    decoration: InputDecoration.collapsed(
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
                      padding: EdgeInsets.zero,
                      child: Text('Let\'s Go!', 
                        style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(kBorderRadius)
                      ),
                      onPressed: () async {
                        if (_emailController.text.isEmpty || _passwordController.text.isEmpty) {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => DirectoryScreen()));
                          // setState(() => _errorMsg = 'Username and password must not be empty');
                        } else {
                          print('Wait for two seconds to go to directory screen');
                          Future.delayed(Duration(seconds: 2), () {
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => DirectoryScreen()));
                          });
                        }
                      },
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