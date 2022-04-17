import 'package:flutter/material.dart';
import 'package:flutter_application_1/awal.dart';
import 'package:flutter_application_1/daftar.dart';
import 'package:flutter_application_1/home.dart';

class login extends StatefulWidget {
  @override
  State<login> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<login> {
  bool _isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: GestureDetector(
            onTap: () => FocusScope.of(context).unfocus(),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 60, 0, 0),
                  child: Container(
                    width: 350,
                    height: 350,
                    decoration: BoxDecoration(
                      color: Color(0xFFEEEEEE),
                    ),
                    child: Image.asset(
                      'images/regis.jpg',
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                  child: SizedBox(
                    width: 250,
                    child: Center(
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30)),
                          hintText: 'Email',
                          contentPadding: EdgeInsets.all(15),
                          prefixIcon: Icon(
                            Icons.person,
                          ),
                        ),
                        // Do something
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 25, 0, 0),
                  child: SizedBox(
                    width: 250,
                    child: Center(
                      child: TextField(
                        obscureText: _isObscure,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30)),
                            hintText: 'Password',
                            prefixIcon: Icon(
                              Icons.lock,
                            ),
                            suffixIcon: IconButton(
                                icon: Icon(_isObscure
                                    ? Icons.visibility
                                    : Icons.visibility_off),
                                onPressed: () {
                                  setState(() {
                                    _isObscure = !_isObscure;
                                  });
                                })),
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsetsDirectional.fromSTEB(100, 50, 100, 0),
                  width: 450,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: FlatButton(
                      padding:
                          EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                      color: Color(0xFF6E6CC8),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => home()));
                      },
                      child: Text(
                        "Masuk",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0, 0),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                    child: GestureDetector(
                      child: Text(
                        'Tidak punya akun ? Daftar disini',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => daftar()));
                      },
                    ),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
