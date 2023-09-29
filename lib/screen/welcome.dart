import 'package:final_login_flutter/screen/Home.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'page/about.dart';
import 'page/scan.dart';
import 'page/cure.dart';

class WelcomeScreen extends StatelessWidget {
  WelcomeScreen({Key? key}) : super(key: key);

  final auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        automaticallyImplyLeading: false,
        title: Text(
          'แอปตรวจสุขภาพ ของกัญชา',
          style: TextStyle(
                fontFamily: 'Poppins',
                color: Colors.white,
                fontSize: 22,
              ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 2,
      ),
      
      body: SafeArea(
         child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Color.fromARGB(255, 4, 99, 8),
                Colors.lightGreenAccent,
              ],
            )
          ),
         
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Align(
            alignment: AlignmentDirectional(0, 0),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(25, 25, 0, 25),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                auth.currentUser!.email.toString(),
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20),
              ),
                  Text(
                    'สายพันธ์ กัญชาของฉัน',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                          fontFamily: 'Poppins',
                          color: Color(0xFFFAFAFA),
                          fontSize: 24,
                        ),
                  ),
                  
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 55, 0, 0),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 150,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 4, 99, 8),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(50),
                          bottomRight: Radius.circular(0),
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(0),
                        ),
                        shape: BoxShape.rectangle,
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                            child:  Image.asset("assets/images/canabisss.png",
                            width: 150,
                              height: 150,
                              fit: BoxFit.contain,),
                          ),
                          Expanded(
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(25, 0, 60, 0),
                              child: Text(
                                'สายพันธ์ หางกระรอก',
                                style: TextStyle(
                                      fontFamily: 'Poppins',
                                      color: Color(0xFFFAFAFA),
                                      fontSize: 24,
                                    ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(45, 15, 0, 0),
                    child: Column(
                      children: [
                      ElevatedButton(onPressed: ()=>Navigator.of(context).push(MaterialPageRoute(
               builder: (BuildContext context) => About())),
              style: ElevatedButton.styleFrom(primary: Colors.green,minimumSize: Size(375, 40),),
              child: Row(children: <Widget>[
                Icon(Icons.app_registration ),
                Text('ข้อมูลเบื่องต้น',
                    style: TextStyle(color: Colors.white))],) 
              ,
                    ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(45, 15, 0, 0),
                    child: Column(
                      children: [
                    ElevatedButton(onPressed: ()=>Navigator.of(context).push(MaterialPageRoute(
               builder: (BuildContext context) => Cure())),
              style: ElevatedButton.styleFrom(primary: Colors.green,
                                              minimumSize: Size(375, 40),
                                              ),
              child: Row(children: <Widget>[
                Icon(Icons.medical_services_outlined),
                Text('การรักษา',
                    style: TextStyle(color: Colors.white))],) 
              ,
                    ),
                      ],
                    ),
                  ),
                    Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(45, 15, 0, 0),
                    child: Column(
                      children: [
                    ElevatedButton(onPressed: (){
                  auth.signOut().then((value) {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) {
                      return HomeScreen();
                    }));
                  });
                },
              style: ElevatedButton.styleFrom(primary: Colors.green,
                                              minimumSize: Size(375, 40),
                                              ),
              child: Row(children: <Widget>[
                Icon(Icons.logout),
                Text('ออกจากระบบ',
                    style: TextStyle(color: Colors.white))],) 
              ,
                    ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(80, 50, 110, 0),
                    child: Column(
                      children: [
                       ElevatedButton(onPressed: ()=>Navigator.of(context).push(MaterialPageRoute(
               builder: (BuildContext context) => Cure())),
              style: ElevatedButton.styleFrom(primary: Colors.green,minimumSize: Size(130,  80),),
              
             child: Column(children: <Widget>[
                Icon(Icons.camera_alt),
                Text('สแกน',
                    style: TextStyle(color: Colors.white))],) 
              ,
                    ),
                     
                      
                        
                       
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      ),
    
    );
  }
}
