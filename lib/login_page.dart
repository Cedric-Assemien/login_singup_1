import 'package:flutter/material.dart';
import 'package:login_signup_1/sign_up_page.dart';
import 'package:social_media_buttons/social_media_icons.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  final _formKey = GlobalKey<FormState>();

  late TextEditingController emailController;
  late TextEditingController mdpController;

  @override
  void initState() {
    emailController = TextEditingController();
    mdpController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    emailController.dispose();
    mdpController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SafeArea(
          child: Text(
            'Logo',
            style: TextStyle(fontSize: 35, color: Colors.grey),
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 30),
            child: Text(
              "Login",
              style: TextStyle(
                fontSize: 20,
                color: Colors.grey,
              ),
            ),
          ),
          Stack(
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(20, 15, 20, 30),
                height: 400,
                width: MediaQuery.of(context).size.width * 0.95,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.5),
                          blurRadius: 10,
                          offset: Offset(3, 5))
                    ],
                    gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        Color(0xffffd391fd),
                        Color(0xffff9eb1fe),
                      ],
                    ),
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(25, 45, 25, 0),
                  child: Column(
                    children: [
                      Form(
                          key: _formKey,
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Email",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  Icon(
                                    Icons.mail,
                                    color: Colors.white,
                                  ),
                                ],
                              ),
                              SizedBox(height: 10),
                              TextFormField(
                                controller: emailController,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Veuillez remplir le champs';
                                  } else {
                                    FocusScope.of(context).unfocus();
                                  }
                                },
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: BorderSide.none,
                                    ),
                                    filled: true,
                                    fillColor: Colors.white.withOpacity(0.1)),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Password",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  Icon(
                                    Icons.key,
                                    color: Colors.white,
                                  ),
                                ],
                              ),
                              SizedBox(height: 10),
                              TextFormField(
                                controller: mdpController,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Veuillez remplir le champs';
                                  } else {
                                    FocusScope.of(context).unfocus();
                                  }
                                },
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: BorderSide.none,
                                    ),
                                    filled: true,
                                    fillColor: Colors.white.withOpacity(0.1)),
                              ),
                              SizedBox(
                                height: 35,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 130),
                                child: ElevatedButton(
                                  style:
                                      ElevatedButton.styleFrom(elevation: 20),
                                  onPressed: () {},
                                  child: Text(
                                    "Forgot password ?",
                                    style: TextStyle(
                                      color: Color(0xffff9eb1fe),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ))
                    ],
                  ),
                ),
              ),
              Positioned(
                  bottom: 1, // Positionne le bouton sur la bordure inférieure
                  left: 1,
                  right: 0,
                  child: 
                  Container(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          elevation: 20,
                          backgroundColor: Color(0xfffffc756f),
                          shape: CircleBorder(),
                          padding: EdgeInsets.all(18),
                        ),
                        onPressed: () {},
                        child: Icon(
                          SocialMediaIcons.google,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(width: 15),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          elevation: 20,
                          backgroundColor: Color(0xffff8478f6),
                          shape: CircleBorder(),
                          padding: EdgeInsets.all(18),
                        ),
                        onPressed: () {},
                        child: Icon(
                          SocialMediaIcons.facebook,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(width: 15),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          elevation: 20,
                          backgroundColor: const Color(0xffff82dcff),
                          shape: CircleBorder(),
                          padding: EdgeInsets.all(18),
                        ),
                        onPressed: () {},
                        child: Icon(
                          SocialMediaIcons.twitter,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  )))
            ],
          ),
          SizedBox(
            height: 80,
          ),
          Center(
            child: Container(
              height: 50,
              width: 200,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.6),
                        blurRadius: 15,
                        offset: Offset(0, 10))
                  ],
                  borderRadius: BorderRadius.circular(60),
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      Color(0xffffd391fd),
                      Color(0xffff9eb1fe),
                    ],
                  )),
              child: Center(
                  child: Text(
                "Login",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              )),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              "Don't have an account?",
              style: TextStyle(color: Colors.grey),
            ),
            SizedBox(
              width: 5,
            ),
            TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const SignUp()));
                },
                child: Text(
                  "Sign up".toUpperCase(),
                  style: TextStyle(color: Colors.grey),
                ))
          ])
        ],
      ),
    );
  }
}
