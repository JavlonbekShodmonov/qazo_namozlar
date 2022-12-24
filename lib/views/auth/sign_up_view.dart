import 'package:flutter/material.dart';
import 'package:keyboard_dismisser/keyboard_dismisser.dart';
import 'package:qazo_namaz/utils/data.dart';
import 'package:qazo_namaz/widgets/title_bar_widget.dart';
import 'package:qazo_namaz/widgets/wbutton_widget.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  final phoneController = TextEditingController();
  final passwordController = TextEditingController();
  bool ischek = false;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return KeyboardDismisser(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const TitleBar(
                        title: "Ro’yxatdan o’tish",
                      ),
                      SizedBox(height: size.height * 0.1),
                      const Text(
                        "Telefon raqam",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w400),
                      ),
                      TextField(
                        controller: phoneController,
                        onChanged: (value) {
                          (phoneController.text);
                        },
                        keyboardType: TextInputType.phone,
                        decoration: const InputDecoration(
                          hintText: "Raqamingizni yozing",
                          prefixIcon: Icon(Icons.phone),
                        ),
                      ),
                      SizedBox(height: size.height * 0.1),
                      const Text(
                        "Telefon raqam",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w400),
                      ),
                      TextField(
                        controller: passwordController,
                        onChanged: (value) {
                          (passwordController.text);
                        },
                        obscureText: ischek,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          hintText: "Yangi parol yozing",
                          prefixIcon: const Icon(Icons.password),
                          suffix: IconButton(
                            onPressed: () {
                              (ischek);
                              setState(() {
                                ischek = !ischek;
                              });
                            },
                            icon: ischek
                                ? const Icon(Icons.remove_red_eye)
                                : const Icon(Icons.remove),
                          ),
                        ),
                      ),
                      SizedBox(height: size.height * 0.06),
                      WButton(
                        onTap: () {},
                        title: 'Yuborish',
                        isActiv: ischek,
                      ),
                      SizedBox(height: size.height * 0.1),
                      Row(
                        children: [
                          Container(
                            width: size.width * 0.35,
                            height: 1,
                            color: Colors.grey,
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 30),
                            child: Text('yoki'),
                          ),
                          Container(
                            width: size.width * 0.35,
                            height: 1,
                            color: Colors.grey,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("Akkauntingiz bormi?"),
                          TextButton(
                            style: TextButton.styleFrom(
                                padding: const EdgeInsets.all(0)),
                            onPressed: () {},
                            child: const Text("Kirish"),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(
                            height: 80,
                            width: 180,
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.grey,
                                  width: 1,
                                ),
                              ),
                              width: 148,
                              height: 62,
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 30),
                              child: const ListTile(
                                leading: CircleAvatar(
                                  backgroundImage:
                                      AssetImage('assets/images.png'),
                                ),
                                title: Text(
                                  'Google',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                        
                      ),
                    ]))));
  }
}
