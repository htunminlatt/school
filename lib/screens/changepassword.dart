import 'package:flutter/material.dart';

class ChangePasswordView extends StatelessWidget {
  ChangePasswordView({super.key});
  final TextEditingController oldPassword = TextEditingController();
  final TextEditingController newPassword = TextEditingController();
  final TextEditingController confirmPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.orange,
        title: const Text(
          'Change Password',
          style: TextStyle(
              fontStyle: FontStyle.italic, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            inputView('Old Password', oldPassword),
            TextButton(
                onPressed: () {},
                child: const Text(
                  'Forgot Password?',
                  style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontSize: 15,
                      color: Colors.black),
                )),
            const SizedBox(
              height: 20,
            ),
            inputView('New Password', newPassword),
            const SizedBox(
              height: 15,
            ),
            inputView('Confirm new Password', confirmPassword),

            const SizedBox(
              height: 40,
            ),

            //button
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
                onPressed: (){}, child: const Text(
                    'Set Password',
                    style: TextStyle(
                        fontStyle: FontStyle.italic,
                        color: Colors.black),
                  )),
            )
          ],
        ),
      ),
    );
  }

  Widget inputView(String hintText, TextEditingController controller) {
    return TextField(
      decoration: InputDecoration(
          hintText: hintText,
          hintStyle:
              const TextStyle(color: Colors.grey, fontStyle: FontStyle.italic),
          contentPadding: const EdgeInsets.all(10),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: const BorderSide(color: Colors.orange)),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: const BorderSide(color: Colors.orange))),
    );
  }
}
