enum EmailSignInFormType {
  signIn,
  Register,
}

class UserModel {
  final String Email;
  final String UserName;
  final String Password;
  final String ConfirmPassword;
  final EmailSignInFormType emailSignInFormType;

  UserModel({
    this.Email,
    this.UserName,
    this.Password,
    this.ConfirmPassword,
    this.emailSignInFormType = EmailSignInFormType.signIn,
  });
  UserModel copy({
    String Email,
    String UserName,
    String Password,
    String ConfirmPassword,
  }) {
    return UserModel(
      Email: Email,
      UserName: UserName,
      Password: Password,
      ConfirmPassword: ConfirmPassword,
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
}
