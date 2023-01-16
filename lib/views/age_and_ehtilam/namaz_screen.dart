import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:qazo_namaz/utils/colors.dart';
import 'package:qazo_namaz/views/age_and_ehtilam/ehtilam_screen.dart';
import 'package:qazo_namaz/views/age_and_ehtilam/confirmation_screen.dart';
import 'package:qazo_namaz/widgets/wbutton_widget.dart';

class NamazScreen extends StatelessWidget {
  const NamazScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
                builder: (context) => const EhtilamScreen(),
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
                'Namozni boshlagan vaqtingiz',
                style: Theme.of(context)
                    .textTheme
                    .bodyText1!
                    .copyWith(fontSize: 24),
                textAlign: TextAlign.center,
              ),
              const Spacer(),
              Text(
                'Shunga qarab qazo namozlaringiz hisoblanadi',
                style: Theme.of(context)
                    .textTheme
                    .bodyText2!
                    .copyWith(fontSize: 16),
                textAlign: TextAlign.center,
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
                        builder: (context) => const ProveScreen(),
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
