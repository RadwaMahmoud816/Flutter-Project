import 'package:flutter/material.dart';
import 'case_detail_page.dart';

class SpecialtyCasesPage extends StatelessWidget {
  final String specialty;

  SpecialtyCasesPage({required this.specialty});

  @override
  Widget build(BuildContext context) {
    // قائمة الحالات مع مسارات ملفات النماذج ثلاثية الأبعاد
    final cases = [
      {
        'name': 'Case 1: Description of the case',
        'modelPath': 'assets/office.mtl'
      },
      {
        'name': 'Case 2: Description of the case',
        'modelPath': 'assets/office.mtl'
      },
      // أضف المزيد من الحالات هنا مع مسارات ملفاتهم
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text(specialty),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: cases.length,
          itemBuilder: (context, index) {
            final caseData = cases[index];
            return Card(
              elevation: 4,
              margin: EdgeInsets.symmetric(vertical: 10),
              child: ListTile(
                title: Text(caseData['name']!),
                subtitle: Text('More details about the case...'),
                onTap: () {
                  // التنقل إلى صفحة التفاصيل مع تمرير مسار النموذج ثلاثي الأبعاد
                  /*Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CaseDetailPage(
                        modelPath: caseData['modelPath']!, // مسار النموذج
                      ),
                    ),
                  );*/
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
