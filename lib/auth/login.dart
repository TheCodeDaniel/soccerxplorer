import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:soccer_xplorer/auth/create_account.dart';
import 'package:soccer_xplorer/pages/page_tracker.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  bool one = false;
  bool two = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              const Text(
                "Log in to your account",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 7),
              const Text("Gain access to the latest soccer information"),
              const SizedBox(height: 25),
              TextFormField(
                onChanged: (value) {
                  if (value.length < 11) {
                    setState(() {
                      one = false;
                    });
                  } else if (value.length > 10) {
                    setState(() {
                      one = true;
                    });
                  }
                },
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Email address",
                ),
              ),
              const SizedBox(height: 15),
              TextFormField(
                onChanged: (value) {
                  if (value.length < 11) {
                    setState(() {
                      two = false;
                    });
                  } else if (value.length > 10) {
                    setState(() {
                      two = true;
                    });
                  }
                },
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "password",
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                "Forgot password?",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                  decoration: TextDecoration.underline,
                ),
              ),
              const SizedBox(height: 38),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    elevation: 0,
                    padding: const EdgeInsets.all(15),
                    textStyle: const TextStyle(
                      fontSize: 17,
                      fontFamily: "PlusJakarta",
                      fontWeight: FontWeight.w700,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    )),
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) {
                        return const PageTracker();
                      },
                    ),
                  );
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text("Login"),
                  ],
                ),
              ),
              const Expanded(
                  child: Align(
                alignment: Alignment.bottomCenter,
              )),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Don't have an account?",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 17,
                    ),
                  ),
                  const SizedBox(width: 2),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        PageTransition(
                          child: const CreateAccount(),
                          type: PageTransitionType.fade,
                          duration: Duration.zero,
                          childCurrent: widget,
                        ),
                      );
                    },
                    child: const Text(
                      "Sign up",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                        color: Color.fromRGBO(30, 221, 118, 1),
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
