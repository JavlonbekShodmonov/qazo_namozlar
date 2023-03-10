import 'package:flutter/material.dart';
import 'package:qazo_namaz/utils/colors.dart';

class WButton extends StatelessWidget {
  final VoidCallback onTap;
  final String title;
  final bool isActiv;
  final Icon? icons;
  const WButton(
      {super.key,
      required this.onTap,
      required this.title,
      required this.isActiv,
      this.icons});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 56,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: isActiv == true ? AppColors.gren : AppColors.grey,
        ),
        onPressed: onTap,
        child: icons 
            ?? Text(
                title,
                style: const TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w400,
                ),
              ),
      ),
    );
  }
}
