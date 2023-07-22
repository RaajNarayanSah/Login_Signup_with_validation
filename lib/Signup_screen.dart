import 'package:flutter/material.dart';
import 'package:login_screen/components/reusableTextField.dart';

import 'Login_screen.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
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
                    fit: BoxFit.fill),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginScreen()));
                      },
                      child: Icon(
                        Icons.arrow_back_ios,
                        size: 30,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(15),
                        child: CircleAvatar(
                          radius: 80,
                          backgroundImage: NetworkImage(
                            'https://img.freepik.com/free-vector/gender-identity-illustration_23-2148542054.jpg?t=st=1690038847~exp=1690039447~hmac=de61ed68108b2ed99a4adefe5d8a72dd23578171f1b3c41afcf292ead2f630d0',
                          ),
                        ),
                      ),
                    ],
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
                    decoration: const BoxDecoration(
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
                              'Register',
                              style: TextStyle(
                                  color: Colors.redAccent,
                                  fontSize: 38,
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            ReusabletextField(
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "Enter your name to proceed";
                                } else {
                                  return null;
                                }
                              },
                              hintText: "Enter Name",
                              icon: Icons.person,
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
                            const SizedBox(
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
                            const SizedBox(
                              height: 20,
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
                                      if (formkey.currentState!.validate()) {}
                                      ;
                                    },
                                    child: const Row(
                                      children: [
                                        Text(
                                          'SIGNUP',
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
                              height: 15,
                            ),
                            const Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.facebook,
                                    color: Colors.black87,
                                    size: 45,
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  CircleAvatar(
                                      backgroundColor: Colors.black87,
                                      child: Icon(
                                        Icons.g_mobiledata,
                                        size: 40,
                                        color: Colors.white,
                                      )),
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
