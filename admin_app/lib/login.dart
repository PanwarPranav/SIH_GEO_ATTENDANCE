import 'package:flutter/material.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MyLoginState createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  final email = TextEditingController();
  final pass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Uncomment if you need the AppBar back
      // appBar: AppBar(
      //   title: const Text(
      //     "MAJDOOR",
      //     style: TextStyle(
      //       fontFamily: 'YatraOne',
      //       fontSize: 48,
      //     ),
      //   ),
      // ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 10, 20, 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Center(
              child: Text(
                'Employee ',
                style: TextStyle(
                  fontFamily: 'YatraOne',
                  fontSize: 48,
                ),
              ),
            ),
            Card(
              child: TextField(
                controller: email,
                decoration: InputDecoration(
                  hintText: 'Employee@gmail.com',
                  hintStyle: const TextStyle(
                    fontFamily: 'YatraOne',
                    fontSize: 15.0,
                    fontWeight: FontWeight.normal,
                  ),
                  border: const OutlineInputBorder(),
                  suffixIcon: IconButton(
                    onPressed: () {
                      email.clear();
                    },
                    icon: const Icon(Icons.clear),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Card(
              child: TextField(
                controller: pass,
                obscureText: true, // Hides password input
                decoration: InputDecoration(
                  hintText: 'Password',
                  hintStyle: const TextStyle(
                    fontFamily: 'YatraOne',
                    fontSize: 15.0,
                    fontWeight: FontWeight.normal,
                  ),
                  border: const OutlineInputBorder(),
                  suffixIcon: IconButton(
                    onPressed: () {
                      pass.clear();
                    },
                    icon: const Icon(Icons.clear),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                  ),
                  onPressed: () {
                    // Ensure 'map' route is defined in your MaterialApp routes
                    Navigator.pushNamed(context, 'checkin');
                  },
                  child: const Text('Log In'),
                ),
                const SizedBox(
                  width: 30,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, 'register');
                  },
                  child: const Text('Register'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
