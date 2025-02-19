/// Validates the input name.
/// 
/// Returns an error message if the name is null or empty,
/// otherwise returns null indicating the name is valid.

String? validateName(String? value) {
  if (value == null || value.isEmpty) return "Name is required";
  return null;
}

String? validateEmail(String? value) {
  if (value == null || value.isEmpty) {
    return "Email is required";
  }
  final emailRegEx = RegExp(r"^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$");
  if (!emailRegEx.hasMatch(value)) {
    return "Enter a valid email address";
  }
  return null;
}

/*************  ✨ Codeium Command ⭐  *************/
/// Validates the input phone number.
/// 
/// Returns an error message if the phone number is null, empty, or
/// not a valid 10-digit phone number, otherwise returns null indicating
/// the phone number is valid.
/******  46921e33-0fa3-4c84-a548-fb4bceadd4b5  *******/ 
String? validatePhone(String? value) {
  if (value == null || value.isEmpty) {
    return "Phone number is required";
  }
  final phoneRegEx = RegExp(r"^\d{10}$");
  if (!phoneRegEx.hasMatch(value)) {
    return "Enter a valid 10-digit phone number";
  }
  return null;
}
