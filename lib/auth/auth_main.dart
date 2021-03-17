import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AuthScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    debugPrint("BUILD!!!!");
    return Scaffold(
      body: SafeArea(
        child: SizedBox.expand(
          child: Column(
            children: [
              Spacer(flex: 1),
              Text("clipNote", style: Theme.of(context).textTheme.headline1),
              Spacer(flex: 1),
              Padding(
                padding: const EdgeInsets.fromLTRB(32, 0, 32, 0),
                child: _buildCredentialsTextField(
                    context, "Username", TextInputType.text),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(32, 16, 32, 0),
                child: _buildCredentialsTextField(
                  context,
                  "Password",
                  TextInputType.visiblePassword,
                  obscureText: true
                ),
              ),
              Spacer(flex: 2),
              ElevatedButton(
                child: Text(
                  "SignIn",
                ),
                onPressed: () {},
              ),
              OutlinedButton(
                child: Text(
                  "SignUp",
                ),
                onPressed: () {},
              ),
              // OutlinedButton(
              //   child: Text(
              //     "SignUp",
              //   ),
              //   onPressed: () {},
              // ),
              Spacer(flex: 1),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCredentialsTextField(
      BuildContext context, String label, TextInputType inputType,
      {bool obscureText = false}) {
    return Builder(
      builder: (context) {
        return TextField(
          obscureText: obscureText,
          keyboardType: inputType,
          maxLines: 1,
          decoration: InputDecoration(
            labelText: label,
            labelStyle: Theme.of(context).textTheme.headline5,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        );
      },
    );
  }
}
