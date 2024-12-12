mixin Validations {

  static bool isPhoneNumber(String s) {
    if (s.length > 16 || s.length < 9) return false;
    return RegExp(r'^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\s\./0-9]*$').hasMatch(s);
  }

  
}