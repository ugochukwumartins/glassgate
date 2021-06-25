import 'package:biawazo/LandingPage/SignUpbutton.dart';
import 'package:biawazo/VendorHomePage/Homevendor.dart';
import 'package:flutter/material.dart';

class VendorRegistrationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Vendor Registration Page"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(18),
          child: Column(
            children: <Widget>[
              TextField(
//   focusNode: _emailNode,
// onChanged: (emal) => _update(),
//   controller: _emailController,
// onEditingComplete: emaileditingComplete,
                decoration: InputDecoration(
                  //  errorText: emailvalid ? widget.emailError : null,
                  labelText: "FirstandLastName",
                  hintText: "Enter FirstandLastName",
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
                  labelText: "PhoneNumber",
                  hintText: "Enter PhoneNumber",
                  //  enabled: _isLoading == false,
                ),
                keyboardType: TextInputType.phone,
                textInputAction: TextInputAction.next,
              ),
              TextField(
                //focusNode: _passwordNode,
                // controller: _passwordController,
                //  onChanged: (password) => _update(),
                decoration: InputDecoration(
                    //   errorText: passswordvalid ? widget.passwordError : null,
                    labelText: "Shop Name",
                    hintText: "ShopName"
                    //  enabled: _isLoading == false,
                    ),
                keyboardType: TextInputType.text,

                //   onEditingComplete: _signIn,
              ),
              TextField(
                //focusNode: _passwordNode,
                // controller: _passwordController,
                //  onChanged: (password) => _update(),
                decoration: InputDecoration(
                    //   errorText: passswordvalid ? widget.passwordError : null,
                    labelText: "Social Media",
                    hintText: " SocialMedia"
                    //  enabled: _isLoading == false,
                    ),
              ), //
              TextField(
                //focusNode: _passwordNode,
                // controller: _passwordController,
                //  onChanged: (password) => _update(),
                decoration: InputDecoration(
                  //   errorText: passswordvalid ? widget.passwordError : null,
                  labelText: " Password",
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
              TextField(
                //focusNode: _passwordNode,
                // controller: _passwordController,
                //  onChanged: (password) => _update(),
                decoration: InputDecoration(
                  //   errorText: passswordvalid ? widget.passwordError : null,
                  labelText: "Date of Birth",
                  //  enabled: _isLoading == false,
                ),
                keyboardType: TextInputType.datetime,

                //   onEditingComplete: _signIn,
              ),
              TextField(
                //focusNode: _passwordNode,
                // controller: _passwordController,
                //  onChanged: (password) => _update(),
                decoration: InputDecoration(
                  //   errorText: passswordvalid ? widget.passwordError : null,
                  labelText: "Referred by",
                  //  enabled: _isLoading == false,
                ),
                keyboardType: TextInputType.text,
                //   onEditingComplete: _signIn,
              ),
              TextField(
                //focusNode: _passwordNode,
                // controller: _passwordController,
                //  onChanged: (password) => _update(),
                decoration: InputDecoration(
                  //   errorText: passswordvalid ? widget.passwordError : null,
                  labelText: "EmailAddress",
                  hintText: "EmailAddress",
                  //  enabled: _isLoading == false,
                ),
                keyboardType: TextInputType.emailAddress,
                //   onEditingComplete: _signIn,
              ),
              TextField(
                //focusNode: _passwordNode,
                // controller: _passwordController,
                //  onChanged: (password) => _update(),
                decoration: InputDecoration(
                  //   errorText: passswordvalid ? widget.passwordError : null,
                  labelText: "Retyp eEmailAddress",
                  hintText: "Retype EmailAddress",
                  //  enabled: _isLoading == false,
                ),
                keyboardType: TextInputType.emailAddress,
                //   onEditingComplete: _signIn,
              ),
              SizedBox(
                height: 25,
              ),
              buildRaisedButton(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Icon(
                      Icons.wc_sharp,
                      color: Colors.white,
                      size: 40,
                    ),
                    Text(
                      "Register As Vendor",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    Opacity(
                      opacity: 0,
                      child: Image.asset("images/google-logo.png"),
                    )
                  ],
                ),
                borderRadious: 18,
                fontsize: 15,
                TextColor: Colors.white,
                color: Colors.teal[700],
                onpressed: () => Navigator.of(context).push(
                  MaterialPageRoute<void>(
                    fullscreenDialog: true,
                    builder: (context) => HomeVendor(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
