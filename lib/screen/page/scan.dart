/* 
import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';




class Scan_picture extends StatefulWidget {
  
  const Scan_picture({ Key? key,}) : super(key: key);
  
  @override
  State<Scan_picture> createState() => _Scan_pictureState();
}

class _Scan_pictureState extends State<Scan_picture> {
   String scanResult = 'Unknown';
  bool checkYoutubeUrl = false;
  @override
  Widget build(BuildContext context) =>Scaffold(
       appBar: AppBar(
       title: Text(''),
     ),
     body: Center(
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children:  <Widget>[
           Text(
             'Scan Result',
             style: TextStyle(
               fontSize: 16,
               color: Colors.black,
               fontWeight: FontWeight.bold,
             ),
           ),
           SizedBox(height: 8),
           Text(
             '$scanResult',
             style: TextStyle(
               fontSize: 28,
               fontWeight: FontWeight.bold,
             ),
           ),
            SizedBox(height: 8),
            checkYoutubeUrl
            ? SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: ()async{
                  if (await canLaunch(scanResult))
                  await launch(scanResult);
                },
                style: ElevatedButton.styleFrom(primary: Colors.red),
                child: Text('Youtube',
                style: TextStyle(color: Colors.white)),
             ))
             :Container(),
             SizedBox(height: 72),
             ElevatedButton(onPressed:() => scanQRCode(), child: Text('เริ่ม แสกน'),
             ),
         ],
       ),
     ), 
    );
    Future<void> scanQRCode() async{
    try {
      final qrCode = await FlutterBarcodeScanner.scanBarcode(
        '#ff6666',
        'Cancel',
        true,
        ScanMode.QR,
      );
      if(!mounted) return;
      setState(() {
        this.scanResult = qrCode;
      });
      if (scanResult.contains('youtube.com')) checkYoutubeUrl = true;
    } on PlatformException {
      scanResult = 'Failed to get platform version.';
    }
  }
    }
 */