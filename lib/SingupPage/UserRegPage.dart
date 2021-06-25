import 'package:flutter/material.dart';

class UserRegistration extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TextField(
//   focusNode: _emailNode,
// onChanged: (emal) => _update(),
//   controller: _emailController,
// onEditingComplete: emaileditingComplete,
          decoration: InputDecoration(
            //  errorText: emailvalid ? widget.emailError : null,
            labelText: "User Name",
            hintText: "User",
            //  enabled: _isLoading == false,
          ),
          keyboardType: TextInputType.text,
          textInputAction: TextInputAction.next,
        ),
        TextField(
          //   focusNode: _emailNode,
          // onChanged: (emal) => _update(),
          //   controller: _emailController,
          // onEditingComplete: emaileditingComplete,
          decoration: InputDecoration(
            //  errorText: emailvalid ? widget.emailError : null,
            labelText: "Email",
            hintText: "test@test.com",
            //  enabled: _isLoading == false,
          ),
          keyboardType: TextInputType.emailAddress,
          textInputAction: TextInputAction.next,
        ),
        TextField(
          //focusNode: _passwordNode,
          // controller: _passwordController,
          //  onChanged: (password) => _update(),
          decoration: InputDecoration(
            //   errorText: passswordvalid ? widget.passwordError : null,
            labelText: "Password",
            //  enabled: _isLoading == false,
          ),
          textInputAction: TextInputAction.done,
          obscureText: true,
          //   onEditingComplete: _signIn,
        ),
        TextField(
          //focusNode: _passwordNode,
          // controller: _passwordController,
          //  onChanged: (password) => _update(),
          decoration: InputDecoration(
            //   errorText: passswordvalid ? widget.passwordError : null,
            labelText: "Confirm Password",
            //  enabled: _isLoading == false,
          ),
          textInputAction: TextInputAction.done,
          obscureText: true,
          //   onEditingComplete: _signIn,
        ),
      ],
    );
  }
}
