import 'package:untitled6/core/utils/utils.dart';

extension StringExtensions on String {
  /// Discover if the String is a valid number
  bool get isNum => Utils.isNum(this);

  /// Discover if the String is numeric only
  bool get isNumericOnly => Utils.isNumericOnly(this);

  String numericOnly({bool firstWordOnly = false}) =>
      Utils.numericOnly(this, firstWordOnly: firstWordOnly);

  /// Discover if the String is alphanumeric only
  bool get isAlphabetOnly => Utils.isAlphabetOnly(this);

  /// Discover if the String is a boolean
  bool get isBool => Utils.isBool(this);

  /// Discover if the String is a vector
  bool get isVectorFileName => Utils.isVector(this);

  /// Discover if the String is a ImageFileName
  bool get isImageFileName => Utils.isImage(this);

  /// Discover if the String is a AudioFileName
  bool get isAudioFileName => Utils.isAudio(this);

  /// Discover if the String is a VideoFileName
  bool get isVideoFileName => Utils.isVideo(this);

  /// Discover if the String is a TxtFileName
  bool get isTxtFileName => Utils.isTxt(this);

  /// Discover if the String is a Document Word
  bool get isDocumentFileName => Utils.isWord(this);

  /// Discover if the String is a Document Excel
  bool get isExcelFileName => Utils.isExcel(this);

  /// Discover if the String is a Document Powerpoint
  bool get isPPTFileName => Utils.isPPT(this);

  /// Discover if the String is a APK File
  bool get isAPKFileName => Utils.isAPK(this);

  /// Discover if the String is a PDF file
  bool get isPDFFileName => Utils.isPDF(this);

  /// Discover if the String is a HTML file
  bool get isHTMLFileName => Utils.isHTML(this);

  /// Discover if the String is a URL file
  bool get isURL => Utils.isURL(this);

  /// Discover if the String is a Email
  bool get isEmail => Utils.isEmail(this);

  /// Discover if the String is a Phone Number
  bool get isPhoneNumber => Utils.isPhoneNumber(this);

  /// Discover if the String is a DateTime
  bool get isDateTime => Utils.isDateTime(this);

  /// Discover if the String is a MD5 Hash
  bool get isMD5 => Utils.isMD5(this);

  /// Discover if the String is a SHA1 Hash
  bool get isSHA1 => Utils.isSHA1(this);

  /// Discover if the String is a SHA256 Hash
  bool get isSHA256 => Utils.isSHA256(this);

  /// Discover if the String is a binary value
  bool get isBinary => Utils.isBinary(this);

  /// Discover if the String is a ipv4
  bool get isIPv4 => Utils.isIPv4(this);

  bool get isIPv6 => Utils.isIPv6(this);

  /// Discover if the String is a Hexadecimal
  bool get isHexadecimal => Utils.isHexadecimal(this);

  /// Discover if the String is a palindrome
  bool get isPalindrome => Utils.isPalindrome(this);

  /// Discover if the String is a passport number
  bool get isPassport => Utils.isPassport(this);

  /// Discover if the String is a currency
  bool get isCurrency => Utils.isCurrency(this);

  /// Discover if the String is a CPF number
  bool get isCpf => Utils.isCpf(this);

  /// Discover if the String is a CNPJ number
  bool get isCnpj => Utils.isCnpj(this);

  /// Discover if the String is a case insensitive
  bool isCaseInsensitiveContains(String b) =>
      Utils.isCaseInsensitiveContains(this, b);

  /// Discover if the String is a case sensitive and contains any value
  bool isCaseInsensitiveContainsAny(String b) =>
      Utils.isCaseInsensitiveContainsAny(this, b);

  /// capitalize the String
  String get capitalize => Utils.capitalize(this);

  /// Capitalize the first letter of the String
  String get capitalizeFirst => Utils.capitalizeFirst(this);

  /// remove all whitespace from the String
  String get removeAllWhitespace => Utils.removeAllWhitespace(this);

  /// converter the String
  String? get camelCase => Utils.camelCase(this);

  /// Discover if the String is a valid URL
  String? get paramCase => Utils.paramCase(this);

  /// add segments to the String
  String createPath([Iterable? segments]) {
    final path = startsWith('/') ? this : '/$this';
    return Utils.createPath(path, segments);
  }

  /// capitalize only first letter in String words to upper case
  String capitalizeAllWordsFirstLetter() =>
      Utils.capitalizeAllWordsFirstLetter(this);
}