import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:noor_optical/login/auth_controller.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();
    var passController = TextEditingController();

    List images=[
      "g.png",
      "t.png",
      "f.png"
    ];
    double w= MediaQuery.of(context).size.width;
    double h= MediaQuery.of(context).size.height;
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            width: w,
            height: h*0.31,
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(
                    "img/signup.png"
                ),
                    fit: BoxFit.cover
                )
            ),
            child: Column(
              children: [
                SizedBox(height: h*0.16,),
                CircleAvatar(
                  backgroundColor: Colors.white70,
                  radius: 60,
                  backgroundImage: AssetImage(
                      "img/profile.png"
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 20, right: 20),
            width: w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: h*0.05,),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 10,
                            spreadRadius: 7,
                            offset: Offset(1, 1),
                            color: Colors.grey.withOpacity(0.3)
                        )
                      ]
                  ),
                  child: TextField(
                    controller: emailController,
                    decoration: InputDecoration(
                        hintText: "Email",
                        prefixIcon: Icon(Icons.email_rounded, color: Colors.deepOrangeAccent,),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(
                                color: Colors.white
                            )
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(
                                color: Colors.white
                            )
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30)
                        )
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 10,
                            spreadRadius: 7,
                            offset: Offset(1, 1),
                            color: Colors.grey.withOpacity(0.3)
                        )
                      ]
                  ),
                  child: TextField(
                    controller: passController,
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: "Password",
                        prefixIcon: Icon(Icons.password_sharp, color: Colors.deepOrangeAccent,),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(
                                color: Colors.white
                            )
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(
                                color: Colors.white
                            )
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30)
                        )
                    ),
                  ),
                ),
                SizedBox(height: 20,),
              ],
            ),
          ),
          SizedBox(height: h*0.07),
          GestureDetector(
            onTap: (){
              AuthController.instance.register(emailController.text.trim(), passController.text.trim());
            },
            child: Container(
              width: w*0.5,
              height: h*0.08,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(image: AssetImage(
                      "img/loginbtn.png"
                  ),
                      fit: BoxFit.cover
                  )
              ),
              child: Center(
                child: Text(
                  "Sign Up",
                  style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                      color: Colors.black
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 10,),
          RichText(text: TextSpan(
              recognizer: TapGestureRecognizer()..onTap=()=>Get.back(),
              text: "Have an account?",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.grey[500]
              )
          )
          ),
          SizedBox(height: h*0.06,),
          RichText(text: TextSpan(
            text: "Sign up using the following methods",
            style: TextStyle(
                color: Colors.grey[500],
                fontSize: 16
            ),
          )
          ),
          Wrap(
            children: List<Widget>.generate(3, (index){
              return Padding(
                padding: const EdgeInsets.all(10.0),
                child: CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.grey[400],
                  child: CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage(
                        "img/"+images[index]
                    ),
                  ),
                ),
              );
            }),
          )
        ],
      ),
    );
  }
}
