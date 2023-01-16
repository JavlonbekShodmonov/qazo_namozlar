import 'package:flutter/material.dart';
import 'package:qazo_namaz/views/age_and_ehtilam/Counting.dart';
import 'package:qazo_namaz/views/age_and_ehtilam/namaz_screen.dart';
import 'package:qazo_namaz/widgets/wbutton_widget.dart';
import '../../utils/colors.dart';

class ProveScreen extends StatelessWidget {
  const ProveScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 44,
        title: const Text(
          'Back',
          style: TextStyle(
              color: AppColors.blue, fontSize: 16, fontWeight: FontWeight.w400),
        ),
        leading: TextButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const NamazScreen(),
              ),
            );
          },
          child: Padding(
            padding: const EdgeInsets.only(left: 12, top: 2),
            child: Row(
              children: const [
                Icon(Icons.arrow_back_ios_new_rounded),
              ],
            ),
          ),
        ),
        leadingWidth: 80,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Text(
                'Tasdiqlash',
                style: Theme.of(context)
                    .textTheme
                    .bodyText1!
                    .copyWith(fontSize: 24),
                textAlign: TextAlign.center,
              ),
              Text(
                'Ma’lumotlaringiz to’g’riligini tekshiring',
                style: Theme.of(context)
                    .textTheme
                    .bodyText2!
                    .copyWith(fontSize: 16),
                textAlign: TextAlign.center,
              ),
              const Spacer(),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                 Text(
                    'Tugilgan kuningiz:',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: AppColors.darkfortexts,
                    ),
                  ),
                  Spacer(),
                 Text(
                    '14-sentabr, 1995',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF030311),
                    ),
                  ),
                ],
              ),
               Container(
                          width: size.width * 1,
                          height: 1,
                          color: Colors.grey,
                        ),
                        Column(
                          children: [
                            SizedBox(
                              height: size.height * 0.05,
                            ),
                          ],
                        ),
               Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                 Text(
                    'Ehtilom/hayz vaqti:',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: AppColors.darkfortexts,
                    ),
                  ),
                  Spacer(),
                 Text(
                    '22-aprel, 2009',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF030311),
                    ),
                  ),
                ],
              ),
              
               Container(
                          width: size.width * 1,
                          height: 1,
                          color: Colors.grey,
                        ),
                         Column(
                          children: [
                            SizedBox(
                              height: size.height * 0.05,
                            ),
                          ],
                        ),
                        Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                 Text(
                    'Namozni boshladingiz:',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: AppColors.darkfortexts,
                    ),
                  ),
                  Spacer(),
                 Text(
                    '31-noyabr, 2014',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF030311),
                    ),
                  ),
                ],
              ),
               Container(
                          width: size.width * 1,
                          height: 1,
                          color: Colors.grey,
                        ),
              const Spacer(),
              WButton(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => Hisoblanmoqda(),
                      ),
                    );
                  },
                  title: 'Tasdiqlash',
                  isActiv: true),
            ],
          ),
        ),
      ),
    );
  }
}
