import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:qr_code/generate_qr_code.dart';
import 'package:qr_code/scan_qr_code.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'QR Code Scanner and Generator',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
      
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('QR Code Scanner and Generator'),backgroundColor: Colors.blue,  
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: ()
            {
              setState(() {
                Get.to(QRScannerScreen());
              });
            }, 
            child: Text('Scan QR Code'),),
            SizedBox( 
              height: 48,
            ),
            ElevatedButton(onPressed: ()
            {
              setState(() {
                Get.to(GenerateQrCode());
              });
            }, 
            child: Text('Generate QR Code'))
          ],
        ),
      ),

    );
  }
}
