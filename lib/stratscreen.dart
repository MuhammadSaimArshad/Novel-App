import 'package:flutter/material.dart';
import 'package:flutter_listview/pdf_viewer.dart';
import 'package:url_launcher/url_launcher.dart';

class stratscreen extends StatefulWidget {
  const stratscreen({super.key});

  @override
  State<stratscreen> createState() => _stratscreenState();
}

class _stratscreenState extends State<stratscreen> {
  var height, width;
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("asset/appicon.png"), fit: BoxFit.fill)),
        child: Column(
          children: [
            SizedBox(
              height: height * 0.82,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MyPdfViewer(),
                    ));
              },
              child: Container(
                height: height * 0.06,
                width: width * 0.6,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(width * 0.05)),
                child: Center(
                  child: Text(
                    "Read Novel",
                    style: TextStyle(
                        fontSize: width * 0.04, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            InkWell(
              onTap: () {
                openWhatsAppgroup();
              },
              child: Container(
                height: height * 0.06,
                width: width * 0.6,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(width * 0.05)),
                child: Center(
                  child: Text(
                    "WhatsAppGroup",
                    style: TextStyle(
                        fontSize: width * 0.04, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

openWhatsAppgroup() async {
  try {
    String url = "https://chat.whatsapp.com/LwPxPT45YSWJURNIk6rg9T";

    await launch(url);
  } catch (e) {
    print("errorr${e}");
  }
}
