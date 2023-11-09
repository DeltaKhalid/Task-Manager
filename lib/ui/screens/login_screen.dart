
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../utils/assets_utils.dart';
import '../widgets/screen_background.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
           Text(
            'Get Started With',
            // style: TextStyle(
            //     fontSize: 24,
            //     color: Colors.black,
            //     fontWeight: FontWeight.w500,
            //     ),
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(height: 16,),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Email',
                ),
              ),
              const SizedBox(height: 12,),
              TextFormField(
                obscureText: true,
                decoration: const InputDecoration(
                  hintText: 'Password',
                ),
              ),
              const SizedBox(height: 16,),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Icon(Icons.arrow_forward),
                ),
              ),
              const SizedBox(height: 24,),
          Center(
            child: InkWell(
              onTap: () {},
              child: Text(
                'Forgot Password?',
                style: TextStyle(color: Colors.grey),
              ),
            ),
          ),
          Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don't have an account?", style: TextStyle(
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0.6,
                  ),),
                  TextButton(onPressed: (){}, child: Text('Sign Up'),),
                ],
              ),
            ],
          ),
        ),
      )
    );
  }
}




