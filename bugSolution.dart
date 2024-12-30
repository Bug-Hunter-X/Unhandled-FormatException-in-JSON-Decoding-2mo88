```dart
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<dynamic> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      try {
        final data = jsonDecode(response.body);
        return data; // Return the decoded JSON
      } on FormatException catch (e) {
        print('Invalid JSON format: $e');
        return null; // Or throw an appropriate exception
      } catch (e) {
        print('Error decoding JSON: $e');
        return null; // Or throw an appropriate exception
      }
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
    rethrow; // Rethrow the exception to be handled higher up the call stack
  }
}
```