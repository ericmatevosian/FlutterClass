import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';


class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController register_email_controller = TextEditingController();
  TextEditingController register_password_controller = TextEditingController();


  Future register() async{
    await FirebaseAuth.instance.createUserWithEmailAndPassword(email: register_email_controller.text,
        password: register_password_controller.text);
  }


  @override
  void dispose(){
    register_email_controller.dispose();
    register_password_controller.dispose();


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
                TextField(
                  controller: register_email_controller,
                  decoration: InputDecoration(
                    fillColor: Colors.green.shade300,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(width: 3,color: Colors.grey.shade700)
                    ),
                    hintText: "enter email",
                    labelText: "email",
                    counter: Offstage(),
                    prefixIcon: Icon(Icons.email),
                  ),
                ),
                TextField(
                  controller: register_password_controller,
                  obscureText: true,
                  decoration: InputDecoration(
                    fillColor: Colors.green.shade300,
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(width: 3,color: Colors.grey.shade700)
                    ),
                    hintText: "enter password",
                    labelText: "password",
                    counter: Offstage(),
                    prefixIcon: Icon(Icons.password),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: GestureDetector(
                    onTap: (){
                      register();
                      Navigator.pop(context);
                    },
                    child: Container(
                      width: 150,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.green[200],
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: Text(
                          "Register",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      )
    );
  }
}
