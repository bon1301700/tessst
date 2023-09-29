import 'package:final_login_flutter/screen/Register.dart';
import 'package:final_login_flutter/screen/login.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
 
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
   
      appBar: AppBar(
        backgroundColor: Color(0xFF8BC34A),
        automaticallyImplyLeading: false,
        title: Text(
          'แอปพลืเคชั่น...',
          style: TextStyle(
                fontFamily: 'Poppins',
                color: Color(0xFFFAFAFA),
                fontSize: 24,
              ),
        ),
        actions: [],
        centerTitle: true,
        elevation: 4,
      ),
      backgroundColor: Color(0xFF8BC34A),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
             Padding(
              padding:EdgeInsetsDirectional.fromSTEB(0,0,0,20),
              child: Image.asset("assets/images/curecanabis.png",
                width: 200,
                height: 200,
                fit: BoxFit.cover,
              ),
               ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 15),
                    child: Material(
                      color: Colors.transparent,
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(0),
                          bottomRight: Radius.circular(90),
                          topLeft: Radius.circular(90),
                          topRight: Radius.circular(0),
                        ),
                      ),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * 0.5,
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(0),
                            bottomRight: Radius.circular(90),
                            topLeft: Radius.circular(90),
                            topRight: Radius.circular(0),
                          ),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Material(
                              color: Colors.transparent,
                              elevation: 10,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(0),
                                  bottomRight: Radius.circular(90),
                                  topLeft: Radius.circular(90),
                                  topRight: Radius.circular(0),
                                ),
                              ),
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.9,
                                height:
                                    MediaQuery.of(context).size.height * 0.4,
                                decoration: BoxDecoration(
                                  color: Color(0xFF30AA34),
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(0),
                                    bottomRight: Radius.circular(90),
                                    topLeft: Radius.circular(90),
                                    topRight: Radius.circular(0),
                                  ),
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(10, 20, 10, 40),
                                      child: Column(
                                        
                                        children: [
                                          ElevatedButton(onPressed: ()=>Navigator.of(context).push(MaterialPageRoute(
               builder: (BuildContext context) => LoginScreen())),
              style: ElevatedButton.styleFrom(primary: Color(0xFF30AA34),minimumSize: Size(290, 40),
              elevation: 10,
              shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(12)),side:BorderSide(color: Color(0xFFFAFAFA),width: 3,)),
              
              child: Row(children: <Widget>[
                
                Text('เข้าสู่ระบบ',
                textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white))],) 
              ,
                    ),
                   Padding(padding: EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
                   child: Column(
                      children: [ElevatedButton(onPressed: ()=>Navigator.of(context).push(MaterialPageRoute(
               builder: (BuildContext context) =>  RegisterScreen())),
              style: ElevatedButton.styleFrom(primary: Color(0xFFFAFAFA),minimumSize: Size(290, 40),
              elevation: 10,
              shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(12)),side:BorderSide(color: Color(0xFFFAFAFA),width: 3,)),
              
              child: Row(children: <Widget>[
                
                Text('สร้างบัญชีใหม่',
                textAlign: TextAlign.center,
                    style: TextStyle(color: Color(0xFF30AA34)))],) 
              ,
                    ),],),
                   ) 
                    ],
                                        
                                
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
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