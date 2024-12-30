```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Use the response body here, this line might cause error if the response is not a valid JSON
      final data = jsonDecode(response.body);
      print(data);
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
    // You might want to rethrow the exception or handle it more gracefully.
  }
}
```