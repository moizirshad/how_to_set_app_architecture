import 'package:flutter/material.dart';
import 'package:home_and_listing/constants.dart';

class LoginWidget extends StatefulWidget {
  const LoginWidget({Key? key}) : super(key: key);

  @override
  State<LoginWidget> createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.blueGrey
      ),
      child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Spacer(),
              Image.asset(
                "assets/facebook.png",
                height: 90,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(16, 30, 16, 16),
                child: Container(
                  decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(5.0)),
                  child: Column(children: [
                    TextFormField(
                      controller: _emailController,
                      onChanged: (value) => {print(value)},
                      decoration:
                      buildInputDecoration(Icons.email, "Enter your Email"),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter email';
                        }
                        if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
                            .hasMatch(value)) {
                          return 'Please a valid Email';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    TextFormField(
                      controller: _passController,
                      obscureText: true,
                      decoration: buildInputDecoration(
                          Icons.lock, "Enter your Password"),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter password';
                        }
                        return null;
                      },
                    ),
                  ]),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: Container(
                  height: 50,
                  child: ElevatedButton(
                    child: const Text("Login"),
                    onPressed: loginButton,
                    style: ElevatedButton.styleFrom(
                        textStyle: TextStyle(fontSize: 20),
                        primary: Color(0xff4E68A1),
                        elevation: 3),
                  ),
                ),
              ),
              TextButton(
                onPressed: signUp,
                child: const Text("Signup For Facebook"),
                style: ButtonStyle(
                    foregroundColor:
                    MaterialStateProperty.all<Color>(Colors.white)),
              ),
              TextButton(
                onPressed: needhelp,
                child: const Text("Need help?"),
                style: ButtonStyle(
                    foregroundColor:
                    MaterialStateProperty.all<Color>(Colors.white)),
              ),
              const Spacer(),
            ],
          )),
    );
  }

  void loginButton() {
    if (_formKey.currentState!.validate()) {
      print("Email" + _emailController.text);
      print("Password" + _passController.text);

      showToast("Login Success", Colors.green);
    }
  }

  void signUp() {
    showToast("Signup Sucess", Colors.blueAccent);
  }

  void needhelp() {
    showToast("needhelp", Colors.redAccent);
  }

  void showToast(String msg, Color color) {
    // Fluttertoast.showToast(
    //     msg: msg,
    //     toastLength: Toast.LENGTH_SHORT,
    //     gravity: ToastGravity.CENTER,
    //     timeInSecForIosWeb: 1,
    //     backgroundColor: color,
    //     textColor: Colors.white,
    //     fontSize: 16.0);
  }
}

InputDecoration buildInputDecoration(IconData icons, String hint) {
  return InputDecoration(
    fillColor: Colors.white,
    prefixIcon: Icon(icons),
    filled: true,
    hintText: hint,
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(5.0),
      borderSide: const BorderSide(color: Colors.green, width: 1.5),
    ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(5.0),
      borderSide: const BorderSide(
        color: Colors.blue,
        width: 1.5,
      ),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(5.0),
      borderSide: const BorderSide(
        color: Colors.blue,
        width: 1.5,
      ),
    ),
  );
}
