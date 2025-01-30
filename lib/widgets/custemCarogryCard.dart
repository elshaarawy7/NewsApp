import 'package:flutter/material.dart';
import 'package:news_app/pages/BusinessPage.dart';
import 'package:news_app/pages/HealthPage.dart';
import 'package:news_app/pages/ReadingPage.dart';
import 'package:news_app/pages/SciencePage.dart';
import 'package:news_app/pages/SportsPage.dart';
import 'package:news_app/pages/TechnologyPage.dart';
import 'package:news_app/widgets/catagry.dart';

class Custemcarogrycard extends StatelessWidget {
  const Custemcarogrycard({super.key});

  @override
  Widget build(BuildContext context) {
    // قائمة الفئات مع الصور والنصوص والصفحات المرتبطة
    List<Map<String, dynamic>> categories = [
      {"imag": "image/3bb37cd5-2869-41f4-886c-ef7bbd7bf4a9.jpg", "text": "Science", "page": SciencePage()},
      {"imag": "image/03eeb882-1f42-4621-b2a5-3a534e2030e4.jpg", "text": "Sports", "page": SportsPage()},
      {"imag": "image/7a2522ac-08c1-4f1b-8db6-8d1baa67ddbd.jpg", "text": "Reading", "page": ReadingPage()},
      {"imag": "image/Des aliments à index glycémique bas, j'en veux !.jpg", "text": "Health", "page": HealthPage()},
      {"imag": "image/Employee Benefits_ 6 Steps for Successful Implementation.jpg", "text": "Business", "page": BusinessPage()},
      {"imag": "image/Fotos de Inteligencia Artificial _ Freepik.jpg", "text": "Technology", "page": TechnologyPage()},
    ];

    return Padding(
      padding: const EdgeInsets.all(8.0), // Padding حول الـ GridView
      child: GridView.builder(
        shrinkWrap: true, // علشان الـ GridView تأخذ أقل مساحة ممكنة
        physics: const NeverScrollableScrollPhysics(), // علشان نمنع الـ scroll
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // عدد الأعمدة
          crossAxisSpacing: 10, // المسافة بين العناصر في نفس الصف
          mainAxisSpacing: 20, // المسافة بين الصفوف
          childAspectRatio: 1.5, // نسبة العرض إلى الارتفاع لكل عنصر
        ),
        itemCount: categories.length, // عدد العناصر في القائمة
        itemBuilder: (context, index) {
          return CatagryCard(
            imag: categories[index]["imag"]!, // صورة الفئة
            text: categories[index]["text"]!, // نص الفئة
            onTap: () {
              // عند الضغط على العنصر، ننتقل إلى الصفحة المحددة
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => categories[index]["page"],
                ),
              );
            },
          );
        },
      ),
    );
  }
}