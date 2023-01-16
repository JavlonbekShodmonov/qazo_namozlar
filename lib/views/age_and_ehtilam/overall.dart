import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:qazo_namaz/views/main_page.dart/home_page.dart';
import '../../widgets/wbutton_widget.dart';

class OverrallScreen extends StatelessWidget {
  const OverrallScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const Spacer(),
              SvgPicture.asset(
                'assets/Glass.svg',
                height: 140,
                width: 140,
                alignment: Alignment.topCenter,
              ),
              const Text(
                'Sizda umumiy hisobda 2 yil, 3 oy, 8 kun qazo namozlari bor ekan. ',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
              ),
              Column(
                children: [
                  SizedBox(
                    height: size.height * 0.05,
                  ),
                ],
              ),
              const Text(
                'Ularni ado qilishga hoziroq kirishishingiz mumkin.',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
              ),
              const Spacer(),
              WButton(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const HomePage(),
                      ),
                    );
                  },
                  title: 'Ado qilishga kirishish',
                  isActiv: true),
            ],
          ),
        ),
      ),
    );
  }
}
