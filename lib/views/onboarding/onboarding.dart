import 'package:flutter/material.dart';
import 'package:qazo_namaz/utils/colors.dart';
import 'package:qazo_namaz/utils/data.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  final PageController controller = PageController(initialPage: 0);
  Key a = const Key('1');
  Key b = const Key('2');
  Key c = const Key('3');
  int _activePage = 0;
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: size.height * 0.8,
            child: PageView.builder(
              key: a,
              controller: controller,
              onPageChanged: (int page) {
                setState(() {
                  _activePage = page;
                });
                (_activePage);
              },
              itemCount: AppData.info.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Image(
                      image: AssetImage(
                        AppData.info[index]['image'],
                      ),
                      height: size.height * 0.5,
                      fit: BoxFit.cover,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List<Widget>.generate(
                        AppData.info.length,
                        (index) => Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 4),
                          child: InkWell(
                            onTap: () {
                              controller.animateToPage(
                                index,
                                duration: const Duration(milliseconds: 300),
                                curve: Curves.easeIn,
                              );
                            },
                            child: Container(
                              height: 10,
                              width: _activePage == index ? 20 : 10,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: _activePage == index
                                    ? AppColors.gren
                                    : AppColors.gren.withOpacity(0.2),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Text(
                      AppData.info[0]['title'],
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List<Widget>.generate(
              AppData.info.length,
              (index) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4),
                child: InkWell(
                  onTap: () {
                    controller.animateToPage(
                      index,
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeIn,
                    );
                  },
                  child: Container(
                    height: 10,
                    width: _activePage == index ? 20 : 10,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: _activePage == index
                          ? AppColors.gren
                          : AppColors.gren.withOpacity(0.2),
                    ),
                  ),
                ),
              ),
            ),
          ),
          // SizedBox(
          //   height: 30,
          //   child: PageView.builder(
          //     key: b,
          //     controller: controller,
          //     onPageChanged: (value) {
          //       setState(() {
          //         _activePage = value;
          //       });
          //     },
          //     itemCount: AppData.info.length,
          //     itemBuilder: (context, index) => Text(
          //       AppData.info[0]['title'],
          //       textAlign: TextAlign.center,
          //       style: const TextStyle(
          //         fontSize: 22,
          //         fontWeight: FontWeight.w600,
          //       ),
          //     ),
          //   ),
          // ),
          // Padding(
          //   padding: const EdgeInsets.symmetric(horizontal: 20),
          //   child: Text(
          //     AppData.info[0]['text'],
          //     textAlign: TextAlign.center,
          //     style: const TextStyle(
          //       fontSize: 16,
          //       fontWeight: FontWeight.w400,
          //       color: AppColors.textgrey,
          //     ),
          //   ),
          // ),

          const SizedBox(height: 1),
        ],
      ),
    );
  }
}

