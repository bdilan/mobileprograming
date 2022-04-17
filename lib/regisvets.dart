import 'package:flutter/material.dart';
import 'package:flutter_application_1/regisvets.dart';
import 'package:flutter_application_1/login.dart';

class regisvets extends StatefulWidget {
  @override
  State<regisvets> createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<regisvets> {
  bool _isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Stack(children: [
          Stack(
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(60, 60, 0, 0),
                child: Container(
                  width: 200,
                  height: 100,
                  decoration: BoxDecoration(),
                  child: Text(
                    'Registrasi\nDokter Hewan',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 30,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(80, 200, 0, 0),
                child: SizedBox(
                  width: 250,
                  child: Center(
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30)),
                        hintText: 'Nama',
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
                padding: EdgeInsetsDirectional.fromSTEB(80, 270, 0, 0),
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
                          Icons.email,
                        ),
                      ),
                      // Do something
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(80, 335, 0, 0),
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
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(80, 408, 0, 0),
                child: SizedBox(
                  width: 250,
                  child: Center(
                    child: TextField(
                      obscureText: _isObscure,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30)),
                          hintText: 'Konfirmasi Password',
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
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(80, 480, 0, 0),
                child: SizedBox(
                  width: 250,
                  child: Center(
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30)),
                        hintText: 'No Hp',
                        contentPadding: EdgeInsets.all(15),
                        prefixIcon: Icon(Icons.contact_page),
                      ),
                      // Do something
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsetsDirectional.fromSTEB(70, 600, 0, 0),
                width: 350,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(29),
                  child: FlatButton(
                    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                    color: Color(0xFF6E6CC8),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => login()));
                    },
                    child: Text(
                      "Masuk",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.8, 0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 670, 85, 0),
                  child: GestureDetector(
                    child: Text(
                      'Sudah punya akun ? Masuk disini',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => login()));
                    },
                  ),
                ),
              ),
            ],
          ),
        ]),
      ),
    ));
  }
}
