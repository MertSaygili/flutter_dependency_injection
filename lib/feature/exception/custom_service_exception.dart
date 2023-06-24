class CustomServiceExceptions implements Exception {
  final String message;
  final int statusCode;

  CustomServiceExceptions({required this.message, required this.statusCode});

  @override
  String toString() {
    return message;
  }
}
