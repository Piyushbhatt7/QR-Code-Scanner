import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class ScanQrCode extends StatefulWidget {
  const ScanQrCode({super.key});

  @override
  State<ScanQrCode> createState() => _ScanQrCodeState();
}

class _ScanQrCodeState extends State<ScanQrCode> {
  String qrResult = 'Scanned Data will appear here';
  Future<void> scanQR () async 
  {
    try {
      final qrCode = await FlutterBarcodeScanner.scanBarcode(
        lineColor, 
        cancelButtonText, 
        isShowFlashIcon, 
        scanMode
        );
    }on PlatformException{
      qrResult = 'Failed to read QR Code';
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('QR Code Scanner '),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 30.0,),
            Text('$qrResult', style: TextStyle(color: Colors.black),),
            SizedBox(height: 30.0,),
            ElevatedButton(onPressed: ()
            {

            }, child: Text("Scan QR Code"))
          ],
        ),
      ),
    );
  }
}