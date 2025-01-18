import 'package:http/http.dart' as http;
import 'dart:convert';

class QuizApi {
  static const String _baseUrl = 'https://api.jsonbin.io/v3/b';

  /// Fetches a quiz by its ID from the API.
  Future<Map<String, dynamic>> getQuizById(String quizId) async {
    try {
      final response = await http.get(
        Uri.parse('$_baseUrl/$quizId'),
        headers: {
          'X-Master-Key': "\$2a\$10\$rUHCHkkF9Y.DAmpaW0TM8OyEJN7tSIn0BxWBBQbWZZprJ9YmcjvHy",
          'X-Access-Key': "\$2a\$10\$jPHQ8YpHcwq3lQMQuScDj.De1Xp.oOmMdANM7uw60LiKv5JPYaduG"
        },
      );
      if (response.statusCode == 200) {
        return json.decode(response.body)["record"];
      } else {
        throw Exception('Failed to load quiz with status code: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Failed to load quiz: $e');
    }
  }
}
