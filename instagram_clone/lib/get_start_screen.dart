import 'package:flutter/material.dart';
import 'package:instagram_clone/login.dart';



class GetStartedScreen extends StatefulWidget {
  const GetStartedScreen({super.key});

  @override
  State<GetStartedScreen> createState() => _GetStartedScreenState();
}

class _GetStartedScreenState extends State<GetStartedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Spacer(),
          Image.asset(
            'asserts/writen.png',
            height: 150,
          ),
          const SizedBox(
            height: 52,
          ),
          Container(
            height: 85,
            width: 85,
            decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(
                        'https://images.unsplash.com/photo-1692401134669-4622e26ebede?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=764&q=80'))),
          ),
          // const CircleAvatar(
          //     radius: 42.5,
          //     backgroundImage: NetworkImage(
          //         'https://images.unsplash.com/photo-1692401134669-4622e26ebede?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=764&q=80')),

          const SizedBox(
            height: 13,
          ),
          const Text(
            'jacob_w',
            style: TextStyle(
              fontFamily: 'SFProText',
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 34.0),
              child: Container(
                  height: 44,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: const Color(0xff3797EF),
                      borderRadius: BorderRadius.circular(5)),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LoginScreen()));
                    },
                    child: const Text(
                      'Log in',
                      style: TextStyle(color: Colors.white),
                    ),
                  ))),

          const SizedBox(
            height: 30,
          ),
          Center(
              child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Switch accounts',
                    style: TextStyle(
                        color: Color(0xff3797EF), fontWeight: FontWeight.w700),
                  ))),
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
                      'Don’t have an account? ',
                      style: TextStyle(
                          fontSize: 12,
                          fontFamily: 'SFProText',
                          color: Colors.black.withOpacity(0.4)),
                    ),
                    const Text(
                      'Sign up.',
                      style: TextStyle(
                          fontSize: 12,
                          fontFamily: 'SFProText',
                          fontWeight: FontWeight.w700),
                    )
                  ],
                ),
              )
            ]),
          )
        ],
      ),
    ));
  }
}
