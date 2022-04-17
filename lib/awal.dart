import 'package:flutter/material.dart';
import 'package:flutter_application_1/daftar.dart';
import 'package:flutter_application_1/login.dart';
import 'package:flutter_application_1/regisvets.dart';

class awal extends StatefulWidget {
  @override
  State<awal> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<awal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 100, 0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 250,
                  height: 100,
                  decoration: BoxDecoration(),
                  child: Align(
                    alignment: AlignmentDirectional(25, 0.5),
                    child: Text(
                      'Selamat Datang di',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontFamily: "opensans",
                        fontWeight: FontWeight.w900,
                        fontSize: 30,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 200,
                  height: 100,
                  decoration: BoxDecoration(),
                  child: Text(
                    'Alo ',
                    style: TextStyle(
                      fontFamily: 'Vidaloka',
                      color: Colors.black,
                      fontSize: 100,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Container(
                  width: 200,
                  height: 100,
                  decoration: BoxDecoration(),
                  child: Text(
                    'Vets',
                    style: TextStyle(
                      fontFamily: 'Vidaloka',
                      color: Color.fromRGBO(110, 108, 200, 1),
                      fontSize: 100,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsetsDirectional.fromSTEB(80, 275, 0, 0),
                  width: 350,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(29),
                    child: FlatButton(
                      padding:
                          EdgeInsets.symmetric(vertical: 20, horizontal: 40),
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
            ),
          ),
        ),
      ),
    );
  }
}
