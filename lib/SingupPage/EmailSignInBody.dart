import 'package:biawazo/BlockSignIn/EmailsignInBlock.dart';
import 'package:biawazo/Coomon/Showexception.dart';
import 'package:biawazo/Models/UserModel.dart';
import 'package:biawazo/Serviceses/Auth.dart';
import 'package:biawazo/Serviceses/Validator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'dart:io';

class SignInbody extends StatefulWidget with emailandPasswordValidator {
  final EmailSignInBloc bloc;
  static Widget create(BuildContext context) {
    final auth = Provider.of<AuthBase>(context, listen: false);
    return Provider<EmailSignInBloc>(
      create: (_) => EmailSignInBloc(auth: auth),
      child: Consumer<EmailSignInBloc>(
        builder: (_, bloc, __) => SignInbody(
          bloc: bloc,
        ),
      ),
      dispose: (
        _,
        bloc,
      ) =>
          bloc.dispose(),
    );
  }

  SignInbody({this.bloc});
  @override
  _SignInbodyState createState() => _SignInbodyState();
}

class _SignInbodyState extends State<SignInbody> {
  EmailSignInFormType _formType = EmailSignInFormType.signIn;
  bool submitted = false;
  FocusNode _emailNode = new FocusNode();
  FocusNode _passwordNode = new FocusNode();
  final TextEditingController _emailController = new TextEditingController();
  final TextEditingController _passwordController = new TextEditingController();

  String get _email => _emailController.text;
  String get _password => _passwordController.text;
  bool _isLoading = false;

  void emaileditingComplete(UserModel model) {
    final newfocus =
        widget.emailvalidator.Isvalid(model.Email) ? _passwordNode : _emailNode;
    FocusScope.of(context).requestFocus(newfocus);
  }

  @override
  void dispose() {
    _emailNode.dispose();
    _passwordNode.dispose();
    _passwordController.dispose();
    _emailController.dispose();
    super.dispose();
  }

  Future<void> _signIn() async {
    try {
      await widget.bloc.signIn();
      Navigator.of(context).pop();
    } on FirebaseAuthException catch (e) {
      Showexception(
        context,
        title: 'Sing in Failed',
        exception: e,
      );
    }
  }

  void _update() {
    setState(() {});
  }

  void _Toggle() {
    widget.bloc.Toggle();
    _passwordController.clear();
    _emailController.clear();
  }

  List<Widget> buildElement(UserModel model) {
    bool emailvalid = submitted && !widget.emailvalidator.Isvalid(_email);
    bool passswordvalid =
        submitted && !widget.passwordvalidator.Isvalid(_password);
    bool sumitCheck = widget.emailvalidator.Isvalid(_email) &&
        widget.passwordvalidator.Isvalid(_password) &&
        !_isLoading;
    final primary = _formType == EmailSignInFormType.signIn
        ? "Sign In"
        : "Create an Account";
    final secondary = _formType == EmailSignInFormType.signIn
        ? "Need an Account ? Register"
        : "Have an Account ? Sign in";
    return [
      TextField(
        focusNode: _emailNode,
        onChanged: (email) => widget.bloc.updateEmail(email),
        controller: _emailController,
        onEditingComplete: () => emaileditingComplete(model),
        decoration: InputDecoration(
          errorText: model.EmailErroText,
          labelText: "Email",
          hintText: "test@test.com",
          enabled: model.isloading == false,
        ),
        keyboardType: TextInputType.emailAddress,
        textInputAction: TextInputAction.next,
      ),
      SizedBox(
        height: 8,
      ),
      TextField(
        focusNode: _passwordNode,
        controller: _passwordController,
        onChanged: (password) => _update(),
        decoration: InputDecoration(
          errorText: passswordvalid ? widget.passwordError : null,
          labelText: "Password",
          enabled: _isLoading == false,
        ),
        textInputAction: TextInputAction.done,
        obscureText: true,
        onEditingComplete: _signIn,
      ),
      SizedBox(
        height: 8,
      ),
      RaisedButton(
        child: Text(primary),
        color: Colors.indigo,
        onPressed: sumitCheck ? _signIn : null,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(4),
          ),
        ),
      ),
      SizedBox(
        height: 8,
      ),
      FlatButton(
        child: Text(secondary),
        onPressed: !_isLoading ? _Toggle : null,
      )
    ];
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<UserModel>(
        stream: widget.bloc.modelStream,
        initialData: UserModel(),
        builder: (context, snapShot) {
          final UserModel model = snapShot.data;
          return Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              children: buildElement(model),
            ),
          );
        });
  }
}
