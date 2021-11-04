import 'package:facebook/screens/home.dart';
import 'package:facebook/widgets/widgets.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var emailController = TextEditingController();
  var passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: 250,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/img.png'),
                  fit: BoxFit.fill
                )
              ),
            ),
            const SizedBox(height: 40,),
            InputField(
              controller: emailController,
              hintText: 'Email or phone',
            ),
            InputField(
              hintText: 'Password',
              controller: passController,
              isPassword: true,
              icon: Icons.visibility,
            ),
            BlockButton(
                onPress: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const HomeScreen()));
                },
                child: const Text('Log In', style: TextStyle(fontSize: 18),),
              buttonSize: const Size(200,40),
            ),
            TextButton(
                onPressed: (){

                },
                child: const Text('Forget Password?')
            )
          ],
        ),
      ),
    );
  }
}
