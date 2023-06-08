void main() {
  MyWords words = MyWords.word("leetcode");
  dynamic words2 = MyWords.word("hello");
  print(words.reveseVowels());
  print(words2.reveseVowels());

  print(words == words2);
  words.toString();

  print(words2.otherMethod());
}

class MyWords {
  /// Field
  String _word;

  /// Private Class
  MyWords._(this._word);

  /// Factory Constructor To check when we are creating an object
  factory MyWords.word(String word) {
    final regex = RegExp(r'[a-z]+');
    if (!regex.hasMatch(word)) {
      throw CustomException(
        "This word did not match, must not be empty, and must contain only lowercase Latin letters",
      );
    }
    return MyWords._(word);
  }


  /// This is reveseVowels algorithm
  String reveseVowels() {
    List result = _word.split("");
    final regex = RegExp(r'[aioue]');
    int index = 0;
    String letter = "";

    for(int i = 0; i < result.length; i++) {
      if(regex.hasMatch(result[i])) {
        if(letter.isNotEmpty) {
          result[index] = result[i];
          result[i] = letter;
          letter = "";
        }
        letter = result[i];
        index = i;
      }
    }

    return result.join("");
  }

  /// This is CopyWith
  MyWords copyWith(String? newWord) {
    return MyWords._(newWord ?? _word);
  }

  /// This is NoSuchMethodError
  @override
  noSuchMethod(Invocation invocation) {
    if (invocation.isAccessor ||
        invocation.isGetter ||
        invocation.isMethod ||
        invocation.isSetter) {
      return CustomException(
          "an error occurred. method or getter setter error, please check and try again");
    }
  }

  /// This is == Operator
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MyWords &&
          runtimeType == other.runtimeType &&
          _word == other._word;

  /// This is HashCode
  @override
  int get hashCode => _word.hashCode;

  /// This is ToString
  @override
  String toString() {
    return 'MyWords{_word: $_word}';
  }
}

// This is Custom Exception
class CustomException implements Exception {
  final dynamic message;

  CustomException([this.message]);

  @override
  String toString() {
    Object? message = this.message;
    if (message == null) return "Exception";
    return "Word Error: $message";
  }
}
