import 'dart:async';

import 'package:biawazo/Models/UserModel.dart';
import 'package:biawazo/Serviceses/Auth.dart';
import 'package:flutter/cupertino.dart';

class EmailSignInBloc {
  final AuthBase auth;
  final StreamController<UserModel> _modelController =
      StreamController<UserModel>();

  EmailSignInBloc({@required this.auth});

  Stream<UserModel> get modelStream => _modelController.stream;
  UserModel _model = new UserModel();
  void dispose() {
    _modelController.close();
  }

  Future<void> signIn() async {
    update(isloading: true, submited: true);
    try {
      if (_model.emailSignInFormType == EmailSignInFormType.signIn) {
        await auth.singinWithEmail(_model.Email, _model.Password);
      } else {
        await auth.singinCreateAccountWithEmail(_model.Email, _model.Password);
      }
    } catch (e) {
      update(isloading: false);
      rethrow;
    }
  }

  void Toggle() {
    final formtype = _model.emailSignInFormType == EmailSignInFormType.signIn
        ? EmailSignInFormType.Register
        : EmailSignInFormType.signIn;
    update(
      email: " ",
      password: " ",
      formType: formtype,
      submited: false,
      isloading: false,
    );
  }

  void updateEmail(String email) => update(email: email);
  void updatePassword(String password) => update(password: password);
  void update({
    String email,
    String password,
    String confirmpassword,
    String username,
    EmailSignInFormType formType,
    bool isloading,
    bool submited,
  }) {
    _model = _model.copy(
        Email: email,
        UserName: username,
        Password: password,
        formType: formType,
        isloading: isloading,
        submited: submited,
        ConfirmPassword: confirmpassword);
    _modelController.add(_model);
  }
}
