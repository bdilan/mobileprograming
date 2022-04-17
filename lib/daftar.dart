import 'package:flutter/material.dart';
import 'package:flutter_application_1/awal.dart';
import 'package:flutter_application_1/regisvets.dart';
import 'package:flutter_application_1/regisuser.dart';
import 'package:flutter_application_1/login.dart';
import 'package:flutter_application_1/home.dart';

class daftar extends StatefulWidget {
  @override
  State<daftar> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<daftar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Stack(
            children: [
              Align(
                alignment: AlignmentDirectional(0, -0.7),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 80, 0, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 200, 0, 0),
                        child: Container(
                          height: 100,
                          decoration: BoxDecoration(),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 0, 90, 0),
                            child: GestureDetector(
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(100),
                                  child: Image.asset(
                                    'images/dokter.jpg',
                                    width: 100,
                                    height: 100,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => regisvets(),
                                      ));
                                }),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 200, 0, 0),
                        child: Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(),
                          child: GestureDetector(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(100),
                              child: Image.asset(
                                'images/user.jpg',
                                width: 100,
                                height: 100,
                                fit: BoxFit.cover,
                              ),
                            ),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => regisuser(),
                                  ));
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0, -0.25),
                child: Text(
                  'Yang Manakah Anda ?',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0, 0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 200, 190, 0),
                  child: Text(
                    'Dokter Hewan',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 10,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0, 0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(190, 200, 0, 0),
                  child: Text(
                    'Pemilik Hewan',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 10,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
