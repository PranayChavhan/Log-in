import 'package:flutter/material.dart';
import 'package:login_two/main.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MyHomePage()));
              },
              icon: const Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
              ))),
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const Padding(padding: EdgeInsets.only(top: 75)),
              const Text(
                "Let's Get Started!",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              const Text(
                "Create an account to Q Allure to get all features",
                style: TextStyle(fontWeight: FontWeight.w300),
              ),
              const SizedBox(
                height: 50,
              ),
              const SizedBox(
                width: 350,
                height: 50,
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Enter your Name',
                      label: Text('Name')),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const SizedBox(
                width: 350,
                height: 50,
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Enter your Email',
                      label: Text('Email')),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const SizedBox(
                width: 350,
                height: 50,
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Enter your Number',
                      label: Text('Phone Number')),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const SizedBox(
                width: 350,
                height: 50,
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Enter your Password',
                      label: Text('Password')),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const SizedBox(
                width: 350,
                height: 50,
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Confirm Password',
                      label: Text('confirm password')),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                width: 200,
                height: 45,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text('Sign in'),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Already have an account?'),
                  TextButton(onPressed: () {}, child: const Text('Log in'))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
