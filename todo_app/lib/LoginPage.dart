import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:todo_app/RegisterPage.dart';
import 'package:page_transition/page_transition.dart';
import 'MainPage.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController login_email_controller = TextEditingController();
  TextEditingController login_password_controller = TextEditingController();

  Future login() async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: login_email_controller.text,
          password: login_password_controller.text);
      print(
          "Login Successfully with user: ${FirebaseAuth.instance.currentUser!.email}");

      Navigator.push(
        context,
        PageTransition(
          child: MainPage(),
          type: PageTransitionType.fade,
          duration: Duration(milliseconds: 500),
        ),
      );
    } catch (e) {
      showDialog(
          barrierDismissible: true,
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text("Error"),
              content: Text("Wrong email or password"),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              actions: [],
            );
          });
    }
  }

  Future sendResetPasswordEmail() async {

    try {
      await FirebaseAuth.instance
          .sendPasswordResetEmail(email: login_email_controller.text);
    }
    catch(e){
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text("Warning"),
              content: Text("Email field is empty!"),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            );
          });
    }



  }

  @override
  void dispose() {
    login_email_controller.dispose();
    login_password_controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                  child: Hero(
                    tag: "logo",
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.4,
                      height: MediaQuery.of(context).size.width * 0.4,
                      decoration: BoxDecoration(
                          //color: Colors.green.shade300,
                          image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage("assets/RizElectron.png"),
                      )),
                    ),
                  )),
              Text(
                "Rizelectron",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                  color: Colors.indigo.shade900,
                ),
              ),
              TextField(
                controller: login_email_controller,
                decoration: InputDecoration(
                  fillColor: Colors.green.shade300,
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide:
                          BorderSide(width: 3, color: Colors.grey.shade700)),
                  hintText: "enter email",
                  labelText: "email",
                  counter: Offstage(),
                  prefixIcon: Icon(Icons.email),
                ),
              ),
              TextField(
                controller: login_password_controller,
                obscureText: true,
                decoration: InputDecoration(
                  fillColor: Colors.green.shade300,
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide:
                          BorderSide(width: 3, color: Colors.grey.shade700)),
                  hintText: "enter password",
                  labelText: "password",
                  counter: Offstage(),
                  prefixIcon: Icon(Icons.password),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 5),
                      child: GestureDetector(
                        onTap: login,
                        child: Container(
                          width: 150,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.green[200],
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Center(
                            child: Text(
                              "Login",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              PageTransition(
                                child: RegisterPage(),
                                type: PageTransitionType.bottomToTop,
                                alignment: Alignment.bottomCenter,
                                duration: Duration(milliseconds: 500),
                              ));
                        },
                        child: Container(
                          width: 150,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.blue[200],
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Center(
                            child: Text(
                              "Sign Up",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: GestureDetector(
                  onTap: sendResetPasswordEmail,
                  child: Text(
                      "forget password?"
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
