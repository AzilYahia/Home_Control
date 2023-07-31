import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:homecontrol/constants/colors.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // final controller = Get.find<AuthController>();
  final formkey = GlobalKey<FormState>();

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40.0),
          child: SingleChildScrollView(
            child: Form(
              key: formkey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 60),
                  Center(child: SvgPicture.asset('assets/logos/technology.svg', height: 100,color: lightColorScheme.primary,)),
                  const SizedBox(height: 50),
                  Text(
                    "Login",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold, fontSize: 45),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Welcome Back,",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.normal, fontSize: 28),
                  ),
                  const SizedBox(
                    height: 5,
                  ),

                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: emailController,
                    obscureText: false,
                    decoration:  InputDecoration(
                      hintText: "Email, phone or username",
                      hintStyle: GoogleFonts.poppins(
                          fontWeight: FontWeight.normal,
                          fontSize: 16,
                          color: const Color(0xFF555454)),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(9),
                        borderSide: const BorderSide(
                          color: Color(0xFF8E8383),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(9),
                        borderSide: const BorderSide(
                          color: kBlue,
                        ),
                      ),
                      isDense: true,
                      contentPadding: const EdgeInsets.fromLTRB(20.28, 18, 10, 18),
                    ),
                    cursorColor: kBlue,
                    validator: (value) {
                      //   if (!RegExp(validationEmail).hasMatch(value!)) {
                      //     return "Email is invalid";
                      //   } else {
                      //     return null;
                      //   }
                    },
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    controller: passwordController,
                    obscureText: false,
                    // controller.isVisible ? true : false,
                    decoration:  InputDecoration(
                      hintText: "Password",
                      hintStyle: GoogleFonts.poppins(
                          fontWeight: FontWeight.normal,
                          fontSize: 16,
                          color: const Color(0xFF555454)),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(9),
                        borderSide: const BorderSide(
                          color: Color(0xFF8E8383),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(9),
                        borderSide: const BorderSide(
                          color: kBlue,
                        ),
                      ),
                      isDense: true,
                      contentPadding: const EdgeInsets.fromLTRB(20.28, 18, 10, 18),
                    ),
                    cursorColor: kBlue,
                    // inp: controller.isVisible
                    //     ? IconButton(
                    //   icon: const Icon(Icons.visibility_off,
                    //       color: Colors.black),
                    //   onPressed: () => controller.visibility(),
                    // )
                    //     : IconButton(
                    //   icon: const Icon(Icons.visibility,
                    //       color: Colors.black),
                    //   onPressed: () => controller.visibility(),
                    // ),
                    validator: (value) {
                      if (value.toString().length < 8) {
                        return "password should be longer or equal to 8 characters";
                      } else {
                        return null;
                      }
                    },
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                          onPressed: () {
                            // Get.toNamed(Routes.forgotPasswordScreen)
                          },
                          child: Text(
                            "Forgot Password?",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w600,
                                fontSize: 15,
                                color: lightColorScheme.tertiary),
                          ))),
                  const SizedBox(
                    height: 30,
                  ),
                  TextButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      padding: MaterialStateProperty.all(const EdgeInsets.only(
                        left: 156,
                        right: 130,
                        top: 20,
                        bottom: 20,
                      )),
                      backgroundColor: MaterialStateProperty.all(lightColorScheme.primary),
                      shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))),
                    ),
                    child:  Center(
                      child: Text("Sign in",style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600, fontSize: 18, color: Colors.white),),
                    ),
                  ),
                  const SizedBox(
                    height: 43,
                  ),
                  Row(
                    children: [
                      const Expanded(
                          child: Divider(
                        thickness: 0.5,
                        color: Color(0xFF585858),
                        indent: 20,
                        endIndent: 20,
                      )),
                      Text(
                        "Or",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                            color: Colors.black),
                      ),
                      const Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Color(0xFF585858),
                          indent: 20,
                          endIndent: 20,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 45,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:  [
                      SvgPicture.asset('assets/logos/fb.svg', height: 35),
                      SizedBox(
                        width: 70,
                      ),
                      SvgPicture.asset('assets/logos/Google.svg',height: 30,),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account?",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            color: const Color(0xFF555454)),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      TextButton(
                        child: Text(
                          "Register Now",
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w700,
                              fontSize: 16,
                              color: lightColorScheme.tertiary),
                        ),
                        onPressed: () {
                          // Get.toNamed(Routes.signUpScreen)
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
