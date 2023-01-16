import 'package:flutter/material.dart';
import 'package:qazo_namaz/views/age_and_ehtilam/overall.dart';

class Hisoblanmoqda extends StatefulWidget {
  const Hisoblanmoqda({super.key});

  @override
  State<Hisoblanmoqda> createState() => _HisoblanmoqdaState();
}

class _HisoblanmoqdaState extends State<Hisoblanmoqda> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 5)).then((value) {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => const OverrallScreen(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Text(
                'Hisoblanmoqda',
                style: Theme.of(context)
                    .textTheme
                    .bodyText1!
                    .copyWith(fontSize: 24,fontWeight: FontWeight.w600),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
