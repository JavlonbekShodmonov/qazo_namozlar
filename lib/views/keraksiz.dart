import 'package:flutter/material.dart';
import 'package:qazo_namaz/utils/data.dart';
import 'package:qazo_namaz/views/auth/sign_up_view.dart';
import 'package:qazo_namaz/widgets/wbutton_widget.dart';

class OnboardPage extends StatelessWidget {
  const OnboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: DefaultTabController(
          length: AppData.info.length,
          child: Builder(
            builder: (BuildContext context) => Column(
              children: <Widget>[
                SizedBox(
                  height: size.height * 0.5,
                  width: double.infinity,
                  child: TabBarView(
                    children: List.generate(
                      AppData.info.length,
                      (index) => Image.asset(
                        AppData.info[0]['image'],
                        fit: BoxFit.cover,
                        height: size.height * 0.5,
                        width: double.infinity,
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(size.height * 0.03),
                  alignment: Alignment.center,
                  child: const TabPageSelector(
                    selectedColor: Colors.amber,
                  ),
                ),
                SizedBox(
                  height: 100,
                  child: TabBarView(
                    children: List.generate(
                      AppData.info.length,
                      (index) => Text(
                        AppData.info[index]['text'],
                        style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: size.width * 0.09,
                    vertical: size.height * 0.03,
                  ),
                  height: size.height * 0.1,
                  child: TabBarView(
                    children: List.generate(
                      AppData.info.length,
                      (index) => Text(
                        AppData.info[index]['title'],
                        style: const TextStyle(
                          fontSize: 18,
                          color: Colors.grey,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                WButton(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const SignUpView(),
                      ),
                    );
                  },
                  title: "Ro’yxatdan o’tish",
                  isActiv: true,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
