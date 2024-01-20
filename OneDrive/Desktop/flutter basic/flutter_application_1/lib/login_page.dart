import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
  @override
  State<LoginPage> createState() => __LoginPageState();
}

class __LoginPageState extends State<LoginPage> {
  final formkey = GlobalKey<FormState>();

  get child => null;
  movetohome(BuildContext context) {
    if (formkey.currentState!.validate()) {
      Navigator.pushNamed(context, "/home");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
            key: formkey,
            child: Column(
              children: [
                SizedBox(
                  height: 100,
                ),
                CircleAvatar(
                  radius: 100,
                  backgroundImage: NetworkImage(
                      "https://images.pexels.com/photos/268533/pexels-photo-268533.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Username must not be null";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        hintText: "Enter Email", labelText: "Email"),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                  child: TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "username can't be empty";
                      } else if (value.length < 6) {
                        return "Password must be greater than 6";
                      }
                      return null;
                    },
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Enter password",
                      labelText: "Password",
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () => movetohome(context),
                  child: Text(
                    "LogIn",
                    style: TextStyle(fontSize: 12),
                  ),
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("New User?"),
                      TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, "/signup");
                          },
                          child: Text("Sign In")),
                    ]),
              ],
            )),
      ),
    );
  }
}
