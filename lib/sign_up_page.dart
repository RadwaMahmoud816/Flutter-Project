import 'package:flutter/material.dart';
import 'home_page.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _levelController = TextEditingController();
  final TextEditingController _idController = TextEditingController();

  // للتحقق من إدخال الحروف فقط في خانة الاسم
  String? _validateName(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your name';
    } else if (!RegExp(r'^[a-zA-Z\s]+$').hasMatch(value)) {
      return 'Name must contain letters only';
    }
    return null;
  }

  // للتحقق من الإدخال في خانة المستوى (يمكن تخصيصها بناءً على المستويات المتاحة)
  String? _validateLevel(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your level';
    } else if (!RegExp(r'^[0-9]+$').hasMatch(value)) {
      return 'Level must be a number';
    }
    return null;
  }

  // للتحقق من إدخال أرقام فقط في خانة الـ ID
  String? _validateID(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your ID';
    } else if (!RegExp(r'^[0-9]+$').hasMatch(value)) {
      return 'ID must be numeric';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text(
          'Sign Up',
          style: TextStyle(fontSize: 20), // يمكن تخصيص حجم النص
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/back.jpeg'), // استبدل بالصورة المناسبة
            fit: BoxFit.fill, // تغطية الشاشة بالكامل
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.85,
                padding: EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Colors.white
                      .withOpacity(0.8), // لون الخلفية مع بعض الشفافية
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 4,
                      blurRadius: 6,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(height: 20),
                      TextFormField(
                        controller: _nameController,
                        decoration: InputDecoration(
                          labelText: 'Username',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                        validator: _validateName,
                      ),
                      SizedBox(height: 20),
                      TextFormField(
                        controller: _levelController,
                        decoration: InputDecoration(
                          labelText: 'Password',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                        validator: _validateLevel,
                      ),
                      SizedBox(height: 30),
                      Center(
                        child: ElevatedButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              // الانتقال إلى HomePage بدون انيميشن
                              Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                  builder: (context) => HomePage(
                                    name: _nameController.text,
                                    level: _levelController.text,
                                    id: _idController.text,
                                  ),
                                ),
                              );
                            }
                          },
                          child: Text(
                            'Submit',
                            style: TextStyle(fontSize: 20),
                          ),
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.symmetric(
                                vertical: 12.0, horizontal: 32.0),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
