import 'package:exam_b28_abduraimov_muhammadyusuf_module_6/service/constants/colors.dart';
import 'package:exam_b28_abduraimov_muhammadyusuf_module_6/service/constants/icons.dart';
import 'package:exam_b28_abduraimov_muhammadyusuf_module_6/service/constants/strings.dart';
import 'package:exam_b28_abduraimov_muhammadyusuf_module_6/service/constants/test_style.dart';
import 'package:flutter/material.dart';



class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 112,
      padding: const EdgeInsets.only(bottom: 15),
      decoration: BoxDecoration(
        color: AppColors.cFFFFFF,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 100,
            offset: const Offset(-2, 1),
          ),
        ],
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 46,
                  height: 46,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: AppColors.c8E97FD,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: AppIcons.home,
                ),
                Text(
                  Strings.home,
                  style: AppTextStyles.helveticaNeu40014,
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 46,
                  height: 46,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: AppColors.cFFFFFF,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: AppIcons.sleep,
                ),
                Text(
                  Strings.sleep,
                  style: AppTextStyles.helveticaNeu40014,
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 46,
                  height: 46,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: AppColors.cFFFFFF,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: AppIcons.meditate,
                ),
                Text(
                  Strings.meditate,
                  style: AppTextStyles.helveticaNeu40014,
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 46,
                  height: 46,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: AppColors.cFFFFFF,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: AppIcons.music,
                ),
                Text(
                  Strings.music,
                  style: AppTextStyles.helveticaNeu40014,
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 46,
                  height: 46,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: AppColors.cFFFFFF,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: AppIcons.person,
                ),
                Text(
                  Strings.afsar,
                  style: AppTextStyles.helveticaNeu40014,
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }
}
