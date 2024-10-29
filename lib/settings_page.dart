import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
        backgroundColor: Color.fromARGB(255, 0, 45, 150),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Settings',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            ListTile(
              title: Text('Language'),
              trailing: Icon(Icons.language), // فقط أيقونة اللغة
            ),
            Divider(),
            ListTile(
              title: Text('Notifications'),
              trailing: Switch(
                value: true, // يمكنك ربط القيمة بحالة الإشعارات الحالية
                onChanged: (bool value) {
                  // يمكنك إضافة إجراء لتفعيل/إلغاء الإشعارات هنا
                },
              ),
            ),
            Divider(),
            ListTile(
              title: Text('Privacy Policy'),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                // يمكنك إضافة إجراء لفتح سياسة الخصوصية هنا
              },
            ),
            Divider(),
            ListTile(
              title: Text('About Us'),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                // يمكنك إضافة إجراء لفتح صفحة "معلومات عنا" هنا
              },
            ),
          ],
        ),
      ),
    );
  }
}
