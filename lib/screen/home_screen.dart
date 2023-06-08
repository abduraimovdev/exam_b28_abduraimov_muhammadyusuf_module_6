import 'package:exam_b28_abduraimov_muhammadyusuf_module_6/service/constants/colors.dart';
import 'package:exam_b28_abduraimov_muhammadyusuf_module_6/service/constants/icons.dart';
import 'package:exam_b28_abduraimov_muhammadyusuf_module_6/service/constants/images.dart';
import 'package:exam_b28_abduraimov_muhammadyusuf_module_6/service/constants/strings.dart';
import 'package:exam_b28_abduraimov_muhammadyusuf_module_6/service/constants/test_style.dart';
import 'package:exam_b28_abduraimov_muhammadyusuf_module_6/views/home_components/bottom_navigation_bar.dart';
import 'package:exam_b28_abduraimov_muhammadyusuf_module_6/views/home_components/box.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.cFFFFFF,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColors.cFFFFFF,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              Strings.silent,
              style: AppTextStyles.airbnb70016!.copyWith(letterSpacing: 2),
            ),
            const SizedBox(width: 10),
            AppIcons.logo,
            const SizedBox(width: 10),
            Text(
              Strings.moon,
              style: AppTextStyles.airbnb70016!.copyWith(letterSpacing: 2),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10),

            /// This is  Text goodMorningAfsar
            Text(
              Strings.goodMorningAfsar,
              style: AppTextStyles.helveticaNeu70028!.copyWith(fontSize: 24),
            ),
            const SizedBox(height: 10),
            Text(
              Strings.weWish,
              style: AppTextStyles.helveticaNeu30020,
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BoxImage(
                  backgroundColor: AppColors.c8E97FD,
                  img: AppImages.vegetable,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          Strings.basics,
                          style: AppTextStyles.helveticaNeu70018,
                        ),
                        const SizedBox(height: 10),
                        Text(
                          Strings.course,
                          style: AppTextStyles.helveticaNeu40011,
                        ),
                        const SizedBox(height: 35),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              Strings.minut,
                              style: AppTextStyles.helveticaNeu40014!
                                  .copyWith(color: AppColors.cEBEAEC),
                            ),
                            TextButton(
                              onPressed: () {},
                              style: TextButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                backgroundColor: AppColors.cEBEAEC,
                              ),
                              child: Text(
                                Strings.start,
                                style: AppTextStyles.helveticaNeu40012,
                              ),
                            )
                          ],
                        ),
                        const SizedBox(height: 15),
                      ],
                    ),
                  ),
                ),
                BoxImage(
                  backgroundColor: AppColors.cFFC97E,
                  img: AppImages.personMusic,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          Strings.relaxation,
                          style: AppTextStyles.helveticaNeu70018!
                              .copyWith(color: AppColors.c3F414E),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          Strings.course,
                          style: AppTextStyles.helveticaNeu40011!
                              .copyWith(color: AppColors.c3F414E),
                        ),
                        const SizedBox(height: 35),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              Strings.minut,
                              style: AppTextStyles.helveticaNeu40014!
                                  .copyWith(color: AppColors.c3F414E),
                            ),
                            TextButton(
                              onPressed: () {},
                              style: TextButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                backgroundColor: AppColors.c3F414E,
                              ),
                              child: Text(
                                Strings.start,
                                style: AppTextStyles.helveticaNeu40012!
                                    .copyWith(color: AppColors.cFEFFFE),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(height: 15),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            BoxImage(
              img: AppImages.clouds,
              backgroundColor: AppColors.c333242,
              width: double.infinity,
              height: 95,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        Strings.dailyThought,
                        style: AppTextStyles.helveticaNeu70018!
                            .copyWith(color: AppColors.cFFFFFF),
                      ),
                      Text(
                        Strings.meditation,
                        style: AppTextStyles.helveticaNeu40011!
                            .copyWith(color: AppColors.cFFFFFF),
                      ),
                    ],
                  ),
                  Image.asset(
                    AppImages.imgPlay,
                    width: 40,
                    height: 40,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}
