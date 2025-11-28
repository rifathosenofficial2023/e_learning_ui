import 'package:e_learning_ui/utils/colors.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final double? width;
  const CustomButton({super.key, required this.title, this.width});

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.sizeOf(context);
    return  Container(
                    width: width ?? size.width *.9,
                    padding: const EdgeInsets.symmetric(
                      vertical: 13,
                      horizontal: 15,
                    ),
                    decoration: BoxDecoration(
                      color: AppColors.primaryColor,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                      BoxShadow(
                        color: AppColors.primaryColor.withValues(alpha: .3),
                        blurRadius: 10,
                        spreadRadius: 5,
                        offset: Offset(3, 5)
                      )
                      ]
                    ),
                    child: Center(
                      child: Text(title,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                      ),
                      ),
                  );
  }
}