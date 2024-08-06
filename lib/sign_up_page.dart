import 'package:flutter/material.dart';
import 'package:social_media_buttons/social_media_icons.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _formKey = GlobalKey<FormState>();

  late TextEditingController nomController;
  late TextEditingController emailController;
  late TextEditingController mdpController;
  late TextEditingController confirmMdpController;

  @override
  void initState() {
    super.initState();
    nomController = TextEditingController();
    emailController = TextEditingController();
    mdpController = TextEditingController();
    confirmMdpController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    nomController.dispose();
    emailController.dispose();
    mdpController.dispose();
    confirmMdpController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Logo',
          style: TextStyle(fontSize: 35, color: Colors.grey),
        ),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.grey,
            )),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 30),
            child: Text(
              "Sign up",
              style: TextStyle(
                fontSize: 20,
                color: Colors.grey,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(20, 15, 20, 30),
            height: 500,
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
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Username",
                                style: TextStyle(color: Colors.white),
                              ),
                              Icon(
                                Icons.person,
                                color: Colors.white,
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          TextFormField(
                            controller: nomController,
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
                          SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                            // controller: emailController,
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
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                " Confirm password",
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
                            controller: confirmMdpController,
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
                        ],
                      ))
                ],
              ),
            ),
          ),
          SizedBox(
            height: 80,
          ),
          Row(
            children: [
              Container(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: 20,
                      backgroundColor: Color(0xfffffc756f),
                      shape: CircleBorder(),
                      padding: EdgeInsets.all(8),
                    ),
                    onPressed: () {},
                    child: Icon(
                      SocialMediaIcons.google,
                      color: Colors.white,
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: 20,
                      backgroundColor: Color(0xffff8478f6),
                      shape: CircleBorder(),
                      padding: EdgeInsets.all(8),
                    ),
                    onPressed: () {},
                    child: Icon(
                      SocialMediaIcons.facebook,
                      color: Colors.white,
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: 20,
                      backgroundColor: const Color(0xffff82dcff),
                      shape: CircleBorder(),
                      padding: EdgeInsets.all(8),
                    ),
                    onPressed: () {},
                    child: Icon(
                      SocialMediaIcons.twitter,
                      color: Colors.white,
                    ),
                  ),
                ],
              )),
              Container(
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
                  "Sign up",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                )),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
