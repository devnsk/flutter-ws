import 'package:flutter/material.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary({super.key, required this.summaryData});
  final List<Map<String, Object>> summaryData;
  // @override
  // Widget build(BuildContext context) {
  //   // TODO: implement build
  //   return SizedBox(
  //     height: 300,
  //     child: SingleChildScrollView(
  //       child: Column(
  //         children: summaryData.map((data) {
  //           return Row(children: [
  //             Text(((data['question_index'] as int) + 1).toString()),
  //             Expanded(
  //               child: Column(
  //                 children: [
  //                   Text(data['question'] as String),
  //                   SizedBox(
  //                     height: 5,
  //                   ),
  //                   Text(data['user_answer'] as String),
  //                   Text(data['correct_answer'] as String),
  //                 ],
  //               ),
  //             ),
  //           ]);
  //         }).toList(),
  //       ),
  //     ),
  //   );
  // }
  /*
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data) {
            
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: '${((data['question_index'] as int) + 1).toString()}: ',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.redAccent,
                        ),
                      ),
                      TextSpan(
                        text: '${data['question']}',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                          color: Colors.blueAccent,
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  'Correct Answer: ${data['correct_answer']}',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                    color: Colors.green,
                  ),
                ),
                Text(
                  'Given Answer: ${data['user_answer']}',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                    color: Colors.purpleAccent,
                  ),
                ),
                SizedBox(height: 20),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
  */
  /*
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data) {
            return Padding(
              padding: const EdgeInsets.symmetric(
                  vertical: 8.0), // Add vertical padding
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '${((data['question_index'] as int) + 1).toString()}: ',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.redAccent,
                        ),
                      ),
                      Flexible(
                        child: Text(
                          data['question'] as String,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                            color: Colors.blueAccent,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Text(
                      'Correct Answer: ${data['correct_answer']}',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                        color: Colors.green,
                      ),
                    ),
                  ]),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Given Answer: ${data['user_answer']}',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                          color: Colors.purpleAccent,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                ],
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
  */
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0), // Add vertical padding
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '${((data['question_index'] as int) + 1).toString()}: ',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.redAccent,
                        ),
                      ),
                      Flexible(
                        child: Text(
                          data['question'] as String,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                            color: Colors.blueAccent,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center, // Center align the text
                    children: [
                      Flexible(
                        child: Text(
                          'Correct Answer: ${data['correct_answer']}',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                            color: Colors.green,
                          ),
                          overflow: TextOverflow.visible, // Allow text to wrap
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center, // Center align the text
                    children: [
                      Flexible(
                        child: Text(
                          'choosen: ${data['user_answer']}',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                            color: Colors.purpleAccent,
                          ),
                          overflow: TextOverflow.visible, // Allow text to wrap
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                ],
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
