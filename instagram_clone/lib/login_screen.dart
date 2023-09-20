      //THIS LOGIN FILE IS login

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/room.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passWordController = TextEditingController();
  bool passwordVisible = true;
  final scaffoldKey = GlobalKey<ScaffoldMessengerState>();
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.white,
      appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
              icon: const Icon(Icons.keyboard_arrow_left),
              onPressed: () {
                Navigator.pop(context);
              })),
      bottomNavigationBar: SizedBox(
          height: 100,
          child: Column(
            children: [
              const Spacer(),
              SizedBox(
                height: 84,
                width: double.infinity,
                child: Column(children: [
                  Divider(color: Colors.black.withOpacity(0.4), thickness: 0.5),
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Instagram от Facebook ',
                          style: TextStyle(
                              fontSize: 12,
                              fontFamily: 'SFProText',
                              color: Colors.black.withOpacity(0.4)),
                        ),
                      ],
                    ),
                  )
                ]),
              )
            ],
          )),
      body: Container(
        margin: const EdgeInsets.all(12),
        width: double.infinity,
        child: ListView(children: [
          const SizedBox(
            height: 100,
          ),
          Image.asset(
            'assets/instagram_logo.png',
            height: 50,
          ),
          const SizedBox(
            height: 39,
          ),
          SizedBox(
            height: 44,
            child: TextField(
              onChanged: (v) {
                setState(() {});
              },
              controller: emailController,
              style: const TextStyle(fontSize: 12),
              cursorColor: Colors.grey,
              decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color(0xffF2F2F2),
                  contentPadding: const EdgeInsets.only(left: 10, right: 10),
                  focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.black.withOpacity(0.1))),
                  disabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.black.withOpacity(0.1))),
                  enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.black.withOpacity(0.1))),
                  border: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.black.withOpacity(0.1)))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: SizedBox(
              height: 44,
              child: TextField(
                onChanged: (v) {
                  setState(() {});
                },
                controller: passWordController,
                style: const TextStyle(fontSize: 12),
                cursorColor: Colors.grey,
                obscureText: passwordVisible,
                decoration: InputDecoration(
                    suffixIcon: IconButton(
                      icon: Icon(!passwordVisible
                          ? Icons.visibility
                          : Icons.visibility_off),
                      onPressed: () {
                        setState(() {
                          passwordVisible = !passwordVisible;
                        });
                      },
                    ),
                    filled: true,
                    fillColor: const Color(0xffF2F2F2),
                    contentPadding: const EdgeInsets.only(left: 10, right: 10),
                    focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.black.withOpacity(0.1))),
                    disabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.black.withOpacity(0.1))),
                    enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.black.withOpacity(0.1))),
                    border: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.black.withOpacity(0.1)))),
              ),
            ),
          ),
          const SizedBox(
            height: 7,
          ),
          const Align(
            alignment: Alignment.centerRight,
            child: Text(
              'Forgot password?',
              style: TextStyle(color: Color(0xff3797EF)),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          InkWell(
            onTap: () async {
              final bool emailValid = RegExp(
                      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                  .hasMatch(emailController.text);
              if (emailValid && (passWordController.text.length > 7)) {
                try {
                  await FirebaseAuth.instance
                      .signInWithEmailAndPassword(
                    email: emailController.text,
                    password: passWordController.text,
                  )
                      .then((value) {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const RoomScreen()));
                  });
                } on FirebaseAuthException catch (e) {
                  print(e.code);
                  if (e.code == 'wrong-password') {
                    setState(() {
                      passWordController.clear();
                    });
                    ScaffoldMessenger.of(context)
                        .showSnackBar(SnackBar(content: Text(e.message ?? '')));
                  } else if (e.code == 'user-not-found') {
                    setState(() {
                      emailController.clear();
                      passWordController.clear();
                    });
                    ScaffoldMessenger.of(context)
                        .showSnackBar(SnackBar(content: Text(e.message ?? '')));
                  }
                } catch (e) {
                  print(e);
                }
              }
            },
            child: Container(
              height: 44,
              width: double.infinity,
              decoration: BoxDecoration(
                  color:
                      RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                  .hasMatch(emailController.text) &&
                              passWordController.text.length > 7
                          ? const Color(0xff3797EF)
                          : Colors.grey,
                  borderRadius: BorderRadius.circular(5)),
              child: const Center(
                  child: Text(
                'Log in',
                style: TextStyle(color: Colors.white),
              )),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/facebook.png',
                height: 17,
              ),
              const SizedBox(
                width: 10,
              ),
              const Text(
                'Log in with Facebook',
                style: TextStyle(color: Color(0xff3797EF)),
              ),
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          Row(
            children: [
              const Expanded(child: Divider()),
              Padding(
                padding: const EdgeInsets.only(left: 30.0, right: 30),
                child: Text(
                  'OR',
                  style: TextStyle(
                      color: Colors.black.withOpacity(
                        0.4,
                      ),
                      fontSize: 12),
                ),
              ),
              const Expanded(child: Divider())
            ],
          ),
        ]),
      ),
    );
  }
}
