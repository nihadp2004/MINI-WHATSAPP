import 'package:flutter/material.dart';

class ScreenLogin extends StatelessWidget {
  ScreenLogin({super.key});

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(backgroundColor: Color(0xFF075E54)),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 300,
              height: 50,
              child: TextField(
                controller: emailController,
                decoration: InputDecoration(
                  hintText: 'type email',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            SizedBox(
              width: 300,
              height: 50,
              child: TextField(
                controller: passwordController,
                decoration: InputDecoration(
                  hintText: 'type password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(Color(0xFF075E54)),
                minimumSize: WidgetStatePropertyAll(Size(300, 50)),
              ),
              child: Text(
                'LOG IN',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onPressed: () {
                if (emailController.text == 'hello@gmail.com' &&
                    passwordController.text == '123') {
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('enter valid email or password')),
                  );
                }
              },
            ),
            SizedBox(height: 10),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(Color(0xFF075E54)),
                minimumSize: WidgetStatePropertyAll(Size(300, 50)),
              ),
              child: Text(
                'SIGN UP',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}

