import 'package:flutter/material.dart';

class SupportPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Support'),
        backgroundColor: const Color.fromARGB(255, 0, 45, 150), // لون الخلفية
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          // لتمكين التمرير في حالة زيادة المحتوى
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'How can we help you?',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              Text(
                'For any inquiries or support, please contact us at:',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 10),
              Text(
                'Email: support@medvr.com',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 10),
              Text(
                'Phone: +123 456 7890',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 20),
              Text(
                'FAQ:',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'Q: How to use this app?',
                style: TextStyle(fontSize: 18),
              ),
              Text(
                'A: You can start by signing up and exploring the training modules.',
                style: TextStyle(fontSize: 18),
              ),
              // يمكنك إضافة المزيد من الأسئلة الشائعة هنا
            ],
          ),
        ),
      ),
    );
  }
}
