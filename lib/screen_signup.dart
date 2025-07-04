import 'package:flutter/material.dart';

class ScreenSignup extends StatelessWidget {
  ScreenSignup({super.key});

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight:65,
        backgroundColor: Color(0xFF075E54),
        foregroundColor: Colors.white,
      ),

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
                  filled: true,
                  fillColor: Colors.white,

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
                'Submit',
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

