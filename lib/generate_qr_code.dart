import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class GenerateQrCode extends StatefulWidget {
  const GenerateQrCode({super.key});

  @override
  State<GenerateQrCode> createState() => _GenerateQrCodeState();
}

class _GenerateQrCodeState extends State<GenerateQrCode> {

  TextEditingController urlController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Generate QR Code'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              if(urlController.text.isNotEmpty)
              
              QrImage(data: urlController.text, size: 200),
              SizedBox(height: 10,),
              Container(
               padding: EdgeInsets.only(left: 10, right: 10),
               child: TextField(
                controller: urlController,
                
               ),
               
              )
              
            ],
          ),
        ),
      ),
    );
  }
}