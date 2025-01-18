import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class QuizResultScreen extends StatelessWidget {
  final int correctAnswers;
  final int incorrectAnswers;
  final int unansweredQuestions;

  const QuizResultScreen({
    Key? key,
    required this.correctAnswers,
    required this.incorrectAnswers,
    required this.unansweredQuestions,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final totalQuestions = correctAnswers + incorrectAnswers + unansweredQuestions;
    final score = (correctAnswers / totalQuestions) * 100;
    return Scaffold(
      appBar: AppBar(
        title: Text('Quiz Results'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Well Done!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Text(
              'Quiz Completed!',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 32),
            PieChart(
              PieChartData(
                sections: _buildPieChartSections(),
                centerSpaceRadius: 40,
                sectionsSpace: 2,
              ),
            ),
            SizedBox(height: 32),
            Text(
              'Performance Breakdown',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            _buildPerformanceRow('Correct Answers', correctAnswers, Colors.green),
            _buildPerformanceRow('Incorrect Answers', incorrectAnswers, Colors.red),
            _buildPerformanceRow('Unanswered Questions', unansweredQuestions, Colors.grey),
          ],
        ),
      ),
    );
  }

  List<PieChartSectionData> _buildPieChartSections() {
    final totalQuestions = correctAnswers + incorrectAnswers + unansweredQuestions;
    return [
      PieChartSectionData(
        value: correctAnswers.toDouble(),
        color: Colors.green,
        title: '${(correctAnswers / totalQuestions * 100).toStringAsFixed(1)}%',
        radius: 50,
        titleStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
      ),
      PieChartSectionData(
        value: incorrectAnswers.toDouble(),
        color: Colors.red,
        title: '${(incorrectAnswers / totalQuestions * 100).toStringAsFixed(1)}%',
        radius: 50,
        titleStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
      ),
      PieChartSectionData(
        value: unansweredQuestions.toDouble(),
        color: Colors.grey,
        title: '${(unansweredQuestions / totalQuestions * 100).toStringAsFixed(1)}%',
        radius: 50,
        titleStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
      ),
    ];
  }

  Widget _buildPerformanceRow(String label, int count, Color color) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label, style: TextStyle(fontSize: 16)),
          Text(
            count.toString(),
            style: TextStyle(fontSize: 16, color: color),
          ),
        ],
      ),
    );
  }
}
