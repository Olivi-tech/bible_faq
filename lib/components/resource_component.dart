import 'package:bible_faq/components/componets.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ResourceComponent extends StatelessWidget {
  const ResourceComponent({
    super.key,
    required this.image,
    required this.ontap,
    this.width = 250,
    required this.title,
    required this.subTitle,
  });
  final String image;
  final VoidCallback ontap;
  final double width;
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: GestureDetector(
        onTap: ontap,
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  image,
                ),
                const Gap(8),
                TitleText(
                  text: title,
                ),
                const Gap(8),
                LabelText(
                  text: subTitle,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}