import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'signin.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              const Padding(padding: EdgeInsets.only(top: 50)),
              Image(
                image: const AssetImage('assets/images/login.jpg'),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.width * 0.6,
              ),
              const Text(
                'Welcome Back!',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              const Text(
                'Log in to your existant account of Q Allure',
                style: TextStyle(fontWeight: FontWeight.w300),
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 30),
                margin: const EdgeInsets.only(left: 30, right: 30),
                child: Column(
                  children: const [
                    TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Enter your Email',
                          label: Text('Email')),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Enter your Password',
                          label: Text('Password')),
                    ),
                    Text(
                      'Forgot Password',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: 200,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text('Log in'),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                'or connect using',
                style: TextStyle(fontWeight: FontWeight.w300),
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 120,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text('Facebook'),
                      style: ElevatedButton.styleFrom(
                          primary: Colors.blue.shade900),
                    ),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  SizedBox(
                    width: 120,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text('Google'),
                      style: ElevatedButton.styleFrom(
                          primary: Colors.red.shade900),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don't have an account?"),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SignIn()));
                      },
                      child: const Text('Sign Up'))
                ],
              ),
            ],
          ),
        ));
  }
}
