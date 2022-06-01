import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TasteMe extends StatefulWidget {
  const TasteMe({Key? key}) : super(key: key);

  @override
  State<TasteMe> createState() => _TasteMeState();
}

class _TasteMeState extends State<TasteMe> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(30),
        child: Column(
          children: [
            const SizedBox(
              height: 100,
            ),
            const Text(
              'Taste Me',
              style: TextStyle(
                fontSize: 30,
                letterSpacing: 0.5,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Spacer(),
            const Material(
              borderRadius: BorderRadius.all(Radius.circular(60)),
              elevation: 4,
              color: Colors.white,
              //shadowColor: Colors.redAccent,
              child: SizedBox(
                height: 50,
                child: TextField(
                  controller: null,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintText: 'Email',
                    prefixIcon: Icon(
                      Icons.mail,
                      color: Colors.redAccent,
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Material(
              borderRadius: BorderRadius.all(Radius.circular(50)),
              elevation: 4,
              color: Colors.white,
              //shadowColor: Colors.white,
              child: TextField(
                controller: null,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  hintText: 'Password',
                  prefixIcon: Icon(
                    Icons.lock,
                    color: Colors.redAccent,
                  ),
                  border: InputBorder.none,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  'Login',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.redAccent),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'FORGET PASSWORD ?',
              style: TextStyle(
                color: Colors.redAccent,
                fontWeight: FontWeight.w700,
                letterSpacing: 0.5,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Don\'t have an Account?'),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Sign Up',
                      style: TextStyle(
                        color: Colors.redAccent,
                        decoration: TextDecoration.underline,
                      ),
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
