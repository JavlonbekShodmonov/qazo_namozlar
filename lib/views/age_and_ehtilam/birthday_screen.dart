import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:qazo_namaz/views/age_and_ehtilam/ehtilam_screen.dart';
import 'package:qazo_namaz/widgets/wbutton_widget.dart';

class BirthdayScreen extends StatelessWidget {
  const BirthdayScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const Spacer(),
              SvgPicture.asset(
                'assets/Calendar.svg',
                height: 80,
                width: 80,
              ),
              Text(
                'Tugilgan kuningiz',
                style: Theme.of(context)
                    .textTheme
                    .bodyText1!
                    .copyWith(fontSize: 24),
              ),
              const Spacer(),
              SizedBox(
                width: 294,
                height: 294,
                child: CupertinoDatePicker(
                  mode: CupertinoDatePickerMode.date,
                  onDateTimeChanged: (val) {},
                ),
              ),
              const Spacer(),
              WButton(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const EhtilamScreen(),
                      ),
                    );
                  },
                  icons: const Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                  ),
                  title: '',
                  isActiv: true),
            ],
          ),
        ),
      ),
    );
  }
}
