import 'package:flutter/material.dart';
import 'package:login_screen/Signup_screen.dart';
import 'package:login_screen/components/reusableTextField.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: Stack(
          alignment: Alignment.bottomCenter,
          clipBehavior: Clip.antiAlias,
          children: [
            Container(
              height: height,
              width: double.infinity,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://images.pexels.com/photos/17349971/pexels-photo-17349971/free-photo-of-neon-on-the-street-at-night.jpeg"),
                      fit: BoxFit.fill)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: CircleAvatar(
                      foregroundColor: Color(0xFFF7BDD3),
                      radius: 80,
                      backgroundImage: NetworkImage(
                        'https://img.freepik.com/free-vector/gender-identity-illustration_23-2148542054.jpg?t=st=1690038847~exp=1690039447~hmac=de61ed68108b2ed99a4adefe5d8a72dd23578171f1b3c41afcf292ead2f630d0',
                      ),
                    ),
                  )
                ],
              ),
            ),
            Stack(
              clipBehavior: Clip.none,
              children: [
                SingleChildScrollView(
                  child: Container(
                    // height: height * 0.6,
                    width: width * 3,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(40),
                            topRight: Radius.circular(40)),
                        color: Colors.white),
                    child: Form(
                      key: formkey,
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Login',
                              style: TextStyle(
                                  color: Colors.redAccent,
                                  fontSize: 38,
                                  fontWeight: FontWeight.bold),
                            ),
                            const Text(
                              'Please sign in to register',
                              style: TextStyle(color: Colors.black54),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            ReusabletextField(
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "Enter a valid email";
                                } else {
                                  return null;
                                }
                              },
                              hintText: "ex: abc@gmail.com",
                              icon: Icons.mail,
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            ReusabletextField(
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "Enter password";
                                } else {
                                  return null;
                                }
                              },
                              icon: Icons.lock,
                              hintText: "XXXXXXX",
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const SizedBox(),
                                OutlinedButton(
                                    style: ButtonStyle(
                                        shape: MaterialStateProperty.all(
                                            RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(13))),
                                        backgroundColor:
                                            MaterialStateProperty.all(
                                                Colors.black87)),
                                    onPressed: () {
                                      formkey.currentState!.validate();
                                    },
                                    child: const Row(
                                      children: [
                                        Text(
                                          'LOGIN',
                                          style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.white),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Icon(
                                          Icons.arrow_right_alt,
                                          color: Colors.white,
                                          size: 32,
                                          weight: 80,
                                        )
                                      ],
                                    )),
                              ],
                            ),
                            const SizedBox(
                              height: 70,
                            ),
                            Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text(
                                    "Dont have an account? ",
                                    style: TextStyle(fontSize: 18),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  SignupScreen()));
                                    },
                                    child: Text(
                                      "Sign up ",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.redAccent),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
