import 'package:bible_faq/components/componets.dart';
import 'package:bible_faq/constants/constants.dart';
import 'package:bible_faq/data/data.dart';
import 'package:bible_faq/model/model.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class LatestQuestionSection extends StatelessWidget {
  const LatestQuestionSection({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Question> questions = QuestionRepository.fetchLatestQuestions();

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const TitleText(text: "Latest Questions"),
            GestureDetector(
              onTap: () {
                Get.toNamed(AppRouts.latestQuestionScreen);
              },
              child: const LabelText(text: "See all"),
            ),
          ],
        ),
        const Gap(10),
        SizedBox(
          height: 150,
          child: ListView.builder(
            padding: EdgeInsets.zero,
            itemCount: questions.length,
            itemBuilder: (context, index) {
              final question = questions[index];
              return Card(
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: ListTile(
                    contentPadding: const EdgeInsets.all(0),
                    leading: Image.asset(question.imagePath),
                    title: TitleText(
                      text: question.text,
                      fontSize: AppFontSize.xsmall,
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
