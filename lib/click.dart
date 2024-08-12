import 'package:http/http.dart' as http;
import 'dart:convert';

class ClickHandler {
  static Future<void> sendEmail() async {
    final response = await http.post(
      Uri.parse('http://192.168.41.152:3000/sendEmail'), // Replace with your actual backend endpoint
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({
        'to': 'recipient@example.com', // Replace with the actual recipient address
        'subject': 'Job Application Confirmation - CodeFest',
        'text': 'Dear Applicant,\n\n' +
            'Thank you for applying for the position at Your Company Name. We have received your application and will be reviewing it shortly.\n\n' +
            'Best Regards,\n' +
            'The CodeFest Team.',
      }),
    );

    if (response.statusCode == 200) {
      print('Email sent successfully!');
    } else {
      print('Failed to send email. Status code: ${response.statusCode}');
    }
  }
}
