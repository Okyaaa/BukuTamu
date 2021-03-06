import 'package:bukutamu_android/screens/signup/components/TextFieldContainer.dart';
import 'package:flutter/material.dart';


class RoundedPasswordField extends StatefulWidget {
  const RoundedPasswordField({Key? key}) : super(key: key);

  @override
  _RoundedPasswordFieldState createState() => _RoundedPasswordFieldState();
}

class _RoundedPasswordFieldState extends State<RoundedPasswordField> {
  bool isHiddenPassword = true;
  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: Center(
        child: TextField(
          obscureText: isHiddenPassword,
          decoration: InputDecoration(
              contentPadding: EdgeInsets.all(10),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  )
              ),
              suffixIcon: InkWell(
                onTap: togglePasswordView,
                child: isHiddenPassword ? Icon(Icons.visibility) : Icon(Icons.visibility_off),
              )
          ),
        ),
      ),
    );
  }

  void togglePasswordView(){
    setState(() {
      isHiddenPassword = !isHiddenPassword;
    });
  }
}