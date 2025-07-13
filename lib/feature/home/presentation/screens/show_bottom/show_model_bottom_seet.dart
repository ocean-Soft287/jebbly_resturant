import 'package:flutter/material.dart';
import 'package:jeebly/core/constant/app_colors.dart';
import 'package:jeebly/feature/home/presentation/screens/ads_screen/banner.dart';
import 'package:jeebly/feature/home/presentation/screens/ads_screen/resturan_setting.dart';
import 'package:jeebly/feature/home/presentation/report/screen/reports.dart';
import 'package:jeebly/feature/home/presentation/screens/show_bottom/Induction%20_account.dart';

class ShowModelBottomSeet extends StatelessWidget {
  const ShowModelBottomSeet({super.key});

  static void show(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) {
        return DraggableScrollableSheet(
          expand: true,
          initialChildSize: 0.7, // تقليل الارتفاع
          minChildSize: 0.5,
          maxChildSize: 1.0,
          builder: (context, scrollController) {
            return Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
              ),
              child: _BottomSheetContent(scrollController: scrollController),
            );
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ShowModelBottomSeet.show(context);
    });

    return Scaffold(body: Center(child: Container()));
  }
}

class _BottomSheetContent extends StatelessWidget {
  final ScrollController scrollController;
  const _BottomSheetContent({required this.scrollController});

  final List<Map<String, dynamic>> gridItems = const [
    {'image': 'assets/images/Group 78.png', 'label': 'اعلانات'},
    {'image': 'assets/images/Group 23.png', 'label': 'حمله'},
    {'image': 'assets/images/Group 52.png', 'label': 'اضف طعام'},
    {'image': 'assets/images/Vector (11).png', 'label': 'حساب تعريفي'},
    {'image': 'assets/images/Group 76.png', 'label': 'التعليقات'},
    {'image': 'assets/images/Group 77.png', 'label': 'قسيمه'},
    {'image': 'assets/images/Group 69.png', 'label': 'الفئات'},
    {'image': 'assets/images/Vector (12).png', 'label': 'إضافة'},
    {'image': 'assets/images/Vector (13).png', 'label': 'محادثه'},
    {'image': 'assets/images/Group 79.png', 'label': 'خطه عملي'},
    {'image': 'assets/images/Vector (14).png', 'label': 'لغه'},
    {'image': 'assets/images/Group 71.png', 'label': 'التقارير'},
    {'image': 'assets/images/Group 74.png', 'label': 'تسجيل الخروج'},
    {'image': 'assets/images/Group 73.png', 'label': 'الشروط والاحكام'},
    {'image': 'assets/images/Group 72.png', 'label': 'سياسة الخصوصية'},
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        // زر الإغلاق في أعلى الـ BottomSheet
        Padding(
          padding: const EdgeInsets.only(top: 12),
          child: Center(
            child: GestureDetector(
              onTap: () => Navigator.of(context).pop(),
              child: Image.asset("assets/images/Vector (17).png"),
            ),
          ),
        ),

        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: GridView.builder(
              controller: scrollController,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 0.8,
              ),
              itemCount: gridItems.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    if (index == 10) {
                      showLanguageDialog(context);
                    } else {
                      switch (index) {
                        case 0:
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (_) => BannerScreen()),
                          );
                          break;
                        case 1:
                          break;
                        case 2:
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => ResturanSetting(),
                            ),
                          );
                          break;
                        case 3:
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => InductionAccount(),
                            ),
                          );
                          break;
                        case 11:
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (_) => ReportsScreen()),
                          );
                          break;
                        default:
                          break;
                      }
                    }
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        backgroundColor: AppColors.mainColor,
                        radius: 25,
                        child: Image.asset(
                          gridItems[index]['image'],
                          width: 25,
                          height: 30,
                          fit: BoxFit.contain,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        gridItems[index]['label'],
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 10,
                          color: AppColors.kblackcolor,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}

void showLanguageDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('اختار اللغة'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              leading: Image.asset(
                'assets/images/Mask group (1).png',
                width: 30,
                height: 30,
              ),
              title: Text('English'),
              onTap: () {
                Navigator.of(context).pop();
              },
            ),
            ListTile(
              leading: Image.asset(
                'assets/images/Mask group.png',
                width: 30,
                height: 30,
              ),
              title: Text('العربية'),
              onTap: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        ),
      );
    },
  );
}
