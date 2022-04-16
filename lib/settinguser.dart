import 'package:flutter/material.dart';
import 'package:flutter_application_1/awal.dart';
import 'package:flutter_application_1/daftar.dart';
import 'package:flutter_application_1/login.dart';
import 'package:flutter_application_1/home.dart';

class settinguser extends StatefulWidget {
  @override
  _SettingWidgetState createState() => _SettingWidgetState();
}

class _SettingWidgetState extends State<settinguser> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Stack(
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 55, 0, 0),
                child: Container(
                  width: 600,
                  height: 900,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 240, 240, 240),
                  ),
                ),
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                    child: Container(
                      width: 300,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Color(0x00EEEEEE),
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                        child: Text(
                          'Pengaturan Profil',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 30,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 100, 0),
                    child: Container(
                      width: 300,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Color(0x00EEEEEE),
                      ),
                      child: Stack(
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(15, 20, 250, 0),
                            child: Icon(
                              Icons.person,
                              color: Color.fromRGBO(110, 108, 200, 1),
                              size: 40,
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(65, 20, 0, 0),
                            child: Text(
                              'Akun',
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(0, 0),
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 1, 0),
                              child: Text('Informasi pribadi, ganti sandi',
                                  style: TextStyle(
                                    fontFamily: 'Open Sans',
                                    fontSize: 13,
                                    fontWeight: FontWeight.normal,
                                  )),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 70, 0),
                    child: Container(
                      width: 300,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Color(0x00EEEEEE),
                      ),
                      child: Stack(
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 25, 0, 0),
                            child: GestureDetector(
                              child: Icon(
                                Icons.logout,
                                color: Color(0xFFFF0000),
                                size: 33,
                              ),
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => awal()));
                              },
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(49, 30, 0, 0),
                            child: Text(
                              'Logout',
                            ),
                          ),
                        ],
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
