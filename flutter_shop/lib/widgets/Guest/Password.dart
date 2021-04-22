import 'package:flutter/material.dart';

class PassworScreen extends StatefulWidget {
  final Function(int) onChangedStep;

  PassworScreen({
    Key key,
    this.onChangedStep,
  }) : super(key: key);

  @override
  _PassworScreenState createState() => _PassworScreenState();
}

class _PassworScreenState extends State<PassworScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _isSecret = true;
  String _password = '';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          titleSpacing: 0.0,
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            color: Colors.black,
            onPressed: () => widget.onChangedStep(0),
          ),
        ),
        body: Center(
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(
              horizontal: 30.0,
            ),
            child: Column(
              children: [
                Text(
                  'password'.toUpperCase(),
                  style: TextStyle(
                    fontSize: 30.0,
                  ),
                ),
                SizedBox(
                  height: 50.0,
                ),
                Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text('Entrer your Password'),
                      SizedBox(
                        height: 10.0,
                      ),
                      TextFormField(
                        onChanged: (value) => setState(() => _password = value),
                        validator: (value) => value.length < 6
                            ? 'Enter a password. 6 caracters min required.'
                            : null,
                        obscureText: _isSecret,
                        decoration: InputDecoration(
                            suffixIcon: InkWell(
                              onTap: () =>
                                  setState(() => _isSecret = !_isSecret),
                              child: Icon(
                                !_isSecret
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                              ),
                            ),
                            hintText: 'admin',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(0.0),
                              borderSide: BorderSide(
                                color: Colors.grey,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(0.0),
                              borderSide: BorderSide(
                                color: Colors.grey,
                              ),
                            )),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      RaisedButton(
                        color: Theme.of(context).primaryColor,
                        elevation: 0,
                        padding: EdgeInsets.symmetric(
                          vertical: 15.0,
                        ),
                        onPressed: _password.length < 6
                            ? null
                            : () {
                          if (_formKey.currentState.validate()) {
                            print(_password);
                          }
                        },
                        child: Text(
                          'continue'.toUpperCase(),
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
