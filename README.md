# Unhandled FormatException in Dart JSON Decoding

This repository demonstrates a common error in Dart applications when handling JSON responses from APIs: the `FormatException` that arises when `jsonDecode` encounters invalid JSON data.

The `bug.dart` file shows the problematic code, which lacks proper error handling for malformed JSON responses.  The `bugSolution.dart` file provides a corrected version with robust error handling.

## Bug Description

The original code directly uses `jsonDecode` on the API response without checking for valid JSON structure.  If the server sends an unexpected response or an error, `jsonDecode` throws a `FormatException`, causing the application to crash or behave unexpectedly.

## Solution

The solution involves adding comprehensive error handling. The improved code checks the response status code and handles potential exceptions gracefully, preventing unexpected application termination.

## How to reproduce

1. Clone the repository.
2. Run `bug.dart`.  Observe the `FormatException` when the API returns invalid JSON.
3. Run `bugSolution.dart`.  Observe the improved error handling.