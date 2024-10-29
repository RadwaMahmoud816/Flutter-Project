import 'package:flutter/material.dart';
import 'splash_page.dart';
import 'sign_up_page.dart'; // إضافة صفحة التسجيل

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      debugShowMaterialGrid: false,
      title: 'Virtual Patient Simulator',
      theme: ThemeData(
        primarySwatch: Colors.teal,
        textTheme: TextTheme(
          displayLarge: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
          bodyLarge: TextStyle(
            fontSize: 18,
            color: Colors.black,
          ),
        ),
      ),
      // تعيين SplashPage كصفحة البداية
      home: SplashPage(), // تأكد أن الاسم مطابق لاسم الكلاس SplashPage
      // مسارات التنقل داخل التطبيق
      routes: {
        '/signUp': (context) => SignUpPage(), // تعريف مسار صفحة Sign Up
      },
    );
  }
}
