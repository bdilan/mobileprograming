import 'package:flutter/material.dart';
import 'package:flutter_application_1/awal.dart';
import 'package:flutter_application_1/daftar.dart';
import 'package:flutter_application_1/login.dart';
import 'package:flutter_application_1/home.dart';
import 'package:flutter_application_1/settinguser.dart';

class registrasiuser extends StatefulWidget {
  @override
  _registrasiuserState createState() => _registrasiuserState();
}

class _registrasiuserState extends State<registrasiuser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 160, 0),
                child: Container(
                  width: 150,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 255, 254, 254),
                  ),
                  child: Text(
                    'Registrasi',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 30,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(50, 150, 50, 0),
                child: Container(
                  width: 300,
                  height: 100,
                  decoration: BoxDecoration(),
                  child: Text(
                    'Apakah anda mempunyai hewan peliharaan?',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(50, 0, 0, 0),
                    child: Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Color(0xFF00D138),
                        shape: BoxShape.circle,
                      ),
                      child: GestureDetector(
                        child: Icon(
                          Icons.check,
                          color: Colors.white,
                          size: 40,
                        ),
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => home()));
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(75, 0, 0, 0),
                    child: Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Color(0xFFD60909),
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.clear,
                        color: Colors.white,
                        size: 50,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
