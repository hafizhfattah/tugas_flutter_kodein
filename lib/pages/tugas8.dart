import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Tugas8 extends StatelessWidget {
  const Tugas8({super.key});

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        primaryColor: Colors.orange,
        scaffoldBackgroundColor: Colors.white,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            elevation: 0,
            backgroundColor: Colors.orange,
            shape: const StadiumBorder(),
            maximumSize: const Size(double.infinity, 56),
            minimumSize: const Size(double.infinity, 56),
          ),
        ),
        inputDecorationTheme: const InputDecorationTheme(
          filled: true,
          fillColor: Color(0xFFF1E6FF),
          iconColor: Colors.orange,
          prefixIconColor: Colors.orange,
          contentPadding:
              EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(30)),
            borderSide: BorderSide.none,
          ),
        ),
      ),
      child: Scaffold(
        appBar: AppBar(),
        body: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Kodein",
                      style: GoogleFonts.montserrat(
                        letterSpacing: 1,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16.0 * 2),
              Row(
                children: [
                  const Spacer(),
                  Image.network(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQTMsZgJGn34hZkaaY6x8ZRjZTsiV9nuK4U_A&usqp=CAU",
                    fit: BoxFit.fitHeight,
                  ),
                  const Spacer(),
                ],
              ),
              const SizedBox(
                height: 10.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Login",
                      style: GoogleFonts.montserrat(
                        letterSpacing: 1,
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16.0 * 2),
              Row(
                children: [
                  const Spacer(),
                  Expanded(
                    flex: 8,
                    child: Form(
                      child: Column(
                        children: [
                          TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            textInputAction: TextInputAction.next,
                            cursorColor: Colors.orange,
                            onSaved: (email) {},
                            decoration: const InputDecoration(
                              hintText: "Your email",
                              prefixIcon: Padding(
                                padding: EdgeInsets.all(16.0),
                                child: Icon(Icons.person),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 16.0),
                            child: TextFormField(
                              textInputAction: TextInputAction.done,
                              obscureText: true,
                              cursorColor: Colors.orange,
                              decoration: const InputDecoration(
                                hintText: "Your password",
                                prefixIcon: Padding(
                                  padding: EdgeInsets.all(16.0),
                                  child: Icon(Icons.lock),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 16.0),
                          Hero(
                            tag: "login_btn",
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.deepOrange,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(32),
                                ),
                              ),
                              onPressed: () {},
                              child: Text(
                                "Login",
                                style: GoogleFonts.montserrat(
                                  letterSpacing: 1,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 24.0,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Row(
                              children: [
                                Text(
                                  "Forgot Password",
                                  style: GoogleFonts.montserrat(
                                    letterSpacing: 1,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                const Spacer(),
                                Text(
                                  "Skip",
                                  style: GoogleFonts.montserrat(
                                    letterSpacing: 1,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Spacer(),
                ],
              ),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Not Registered?",
                    style: GoogleFonts.montserrat(
                      letterSpacing: 1,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    width: 2.0,
                  ),
                  Text(
                    "Create Account",
                    style: GoogleFonts.montserrat(
                      color: Colors.deepOrange,
                      letterSpacing: 1,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
