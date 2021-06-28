import 'package:biawazo/Serviceses/Validator.dart';

enum EmailSignInFormType {
  signIn,
  Register,
}

class UserModel with emailandPasswordValidator {
  final String Email;
  final String UserName;
  final String Password;
  final String ConfirmPassword;
  final EmailSignInFormType emailSignInFormType;
  final bool isloading;
  final bool submited;

  UserModel({
    this.Email = " ",
    this.UserName = " ",
    this.Password = " ",
    this.ConfirmPassword = " ",
    this.emailSignInFormType = EmailSignInFormType.signIn,
    this.isloading = false,
    this.submited = false,
  });
  UserModel copy(
      {String Email,
      String UserName,
      String Password,
      String ConfirmPassword,
      bool isloading,
      bool submited,
      EmailSignInFormType formType}) {
    return UserModel(
      Email: Email ?? this.Email,
      UserName: UserName ?? this.UserName,
      Password: Password ?? this.Password,
      ConfirmPassword: ConfirmPassword ?? this.ConfirmPassword,
      emailSignInFormType: formType ?? this.emailSignInFormType,
      isloading: isloading ?? this.isloading,
      submited: submited ?? this.submited,
    );
  }

  String get Primary {
    return emailSignInFormType == EmailSignInFormType.signIn
        ? "Sign In"
        : "Create an Account";
  }

  String get Secondary {
    return emailSignInFormType == EmailSignInFormType.signIn
        ? "Need an Account ? Register"
        : "Have an Account ? Sign in";
  }

  bool get cansubmit {
    return emailvalidator.Isvalid(Email) &&
        passwordvalidator.Isvalid(Password) &&
        !isloading;
  }

  String get PasswordErroText {
    bool passswordvalid = submited && !passwordvalidator.Isvalid(Password);
    return passswordvalid ? passwordError : null;
  }

  String get EmailErroText {
    bool emailvalid = submited && !emailvalidator.Isvalid(Email);
    return emailvalid ? emailError : null;
  }
}
