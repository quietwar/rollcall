class Validators {
  static final RegExp _userNameRegExp = RegExp(
    r'^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$',
  );
  static final RegExp _fullNameRegExp = RegExp(
    r'^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$',
  );

 static final RegExp _cellyRegExp = RegExp(
    r'^(?:[+0]9)?[0-9]{10}$',
  );

  static final RegExp _emailRegExp = RegExp(
    r'^[a-zA-Z0-9.!#$%&’*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$',
  );
  
  static final RegExp _passwordRegExp = RegExp(
    r'^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$', 
  );

  static isValidUserName(String userName) {
    return _userNameRegExp.hasMatch(userName);
  }

  static isValidFullName(String fullName) {
    return _fullNameRegExp.hasMatch(fullName);
  } 
  
  static isValidCelly(String celly) {
    return _cellyRegExp.hasMatch(celly);
  }

  static isValidEmail(String email) {
    return _emailRegExp.hasMatch(email);
  }

  static isValidPassword(String password) {
    return _passwordRegExp.hasMatch(password);
  }
}
