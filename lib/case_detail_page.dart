/* case_detail_page.dart
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_cube/flutter_cube.dart';
import 'package:flutter_sound/flutter_sound.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:http/http.dart' as http;
import 'package:path_provider/path_provider.dart';

class CaseDetailPage extends StatefulWidget {
  final String modelPath;

  CaseDetailPage({required this.modelPath});

  @override
  _CaseDetailPageState createState() => _CaseDetailPageState();
}

class _CaseDetailPageState extends State<CaseDetailPage> {
  FlutterSoundRecorder? _recorder;
  bool _isRecording = false;
  String? _filePath;

  @override
  void initState() {
    super.initState();
    _recorder = FlutterSoundRecorder();
    _initializeRecorder();
  }

  Future<void> _initializeRecorder() async {
    await _recorder!.openRecorder();
    await _requestMicrophonePermission();
  }

  Future<void> _requestMicrophonePermission() async {
    var status = await Permission.microphone.request();
    if (status != PermissionStatus.granted) {
      throw 'Microphone permission not granted';
    }
  }

  Future<void> _startRecording() async {
    Directory tempDir = await getTemporaryDirectory();
    _filePath = '${tempDir.path}/recording.wav';

    await _recorder!.startRecorder(
      toFile: _filePath,
      codec: Codec.pcm16WAV,
    );

    setState(() {
      _isRecording = true;
    });
  }

  Future<void> _stopRecording() async {
    await _recorder!.stopRecorder();
    setState(() {
      _isRecording = false;
    });
    if (_filePath != null) {
      await _sendAudioToApi(_filePath!);
    }
  }

  Future<void> _sendAudioToApi(String filePath) async {
    var uri = Uri.parse("https://your-api-url.com/upload-audio");
    var request = http.MultipartRequest("POST", uri);
    request.files.add(await http.MultipartFile.fromPath('file', filePath));

    var response = await request.send();
    if (response.statusCode == 200) {
      print("Audio uploaded successfully");
    } else {
      print("Failed to upload audio");
    }
  }

  @override
  void dispose() {
    _recorder!.closeRecorder();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Case Details'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // ويدجت Cube لعرض النموذج ثلاثي الأبعاد
            Cube(
              onSceneCreated: (Scene scene) {
                // تحميل ملف .obj الذي سيقوم تلقائيًا بتحميل ملف .mtl من نفس المجلد
                scene.world.add(Object(fileName: widget.modelPath));
                scene.camera.zoom = 10; // ضبط مستوى التكبير
              },
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _isRecording ? _stopRecording : _startRecording,
              child: Text(_isRecording ? 'Stop Recording' : 'Start Recording'),
            ),
          ],
        ),
      ),
    );
  }
}*/
