import 'dart:io';

import 'package:aibirdie/constants.dart';
import 'package:aibirdie/screens/Audio/audio_identify.dart';
import 'package:aibirdie/screens/Image/image_result.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:multi_media_picker/multi_media_picker.dart';

class UploadFile extends StatefulWidget {
  @override
  _UploadFileState createState() => _UploadFileState();
}

class _UploadFileState extends State<UploadFile> {
  List<String> inputs = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
          color: darkPurple,
        ),
        centerTitle: true,
        backgroundColor: Color(0xfffafafa),
        elevation: 0.0,
        title: Text(
          "Upload file",
          style: level2softdp.copyWith(fontSize: 20),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                color: Color(0xfffafafa),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(-6.00, -6.00),
                    color: Color(0xffffffff).withOpacity(0.80),
                    blurRadius: 10,
                  ),
                  BoxShadow(
                    offset: Offset(6.00, 6.00),
                    color: Color(0xff000000).withOpacity(0.20),
                    blurRadius: 10,
                  ),
                ],
                borderRadius: BorderRadius.circular(100.00),
              ),
              height: 100,
              width: 100,
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  side: BorderSide(
                    style: BorderStyle.solid,
                    color: MaterialStateColor.resolveWith((states) =>
                        states.contains(MaterialState.pressed)
                            ? softGreen
                            : darkPurple),
                    width: 1.5,
                  ),
                  backgroundColor: darkPurple,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.add_photo_alternate,
                      color: darkPurple,
                      size: 30,
                    ),
                    Text(
                      "Image",
                      style: level2softdp,
                    ),
                  ],
                ),
                onPressed: () async {
                  final picked = await MultiMediaPicker.pickImages(
                    source: ImageSource.gallery,
                  );

                  if (picked != null) {
                    setState(() {
                      inputs.clear();
                      for (var i in picked) inputs.add(i.path);
                    });

                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            ImageResult(imageInputFiles: inputs),
                      ),
                    );
                  }

                  // print("Image path: ${image.path}");
                },
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Color(0xfffafafa),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(-6.00, -6.00),
                    color: Color(0xffffffff).withOpacity(0.80),
                    blurRadius: 10,
                  ),
                  BoxShadow(
                    offset: Offset(6.00, 6.00),
                    color: Color(0xff000000).withOpacity(0.20),
                    blurRadius: 10,
                  ),
                ],
                borderRadius: BorderRadius.circular(100.00),
              ),
              height: 100,
              width: 100,
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                    backgroundColor: darkPurple,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100),
                    ),
                    side: BorderSide(
                        style: BorderStyle.solid,
                        width: 1.5,
                        color: MaterialStateColor.resolveWith((states) =>
                            states.contains(MaterialState.pressed)
                                ? softGreen
                                : darkPurple))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.music_note,
                      color: darkPurple,
                      size: 30,
                    ),
                    Text(
                      "Audio",
                      style: level2softdp,
                    ),
                  ],
                ),
                onPressed: () async {
                  File file = await FilePicker.getFile(
                    type: FileType.audio,
                  );
                  if (file != null) {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => AudioIdentify(
                          file: file,
                        ),
                      ),
                    );
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
