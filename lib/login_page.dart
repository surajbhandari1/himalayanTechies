import 'package:flutter/material.dart';

class homePage extends StatefulWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  bool value = false;
  final passwordController = TextEditingController();
  final emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.menu),
          actions: const [
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Icon(Icons.search_sharp),
            )
          ],
        ),
        body: SingleChildScrollView(
            child: Stack(children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 800,
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage('assets/images/back.jpg'),
              ),
            ),
          ),
          Container(
            color: Colors.black.withOpacity(0.85),
            alignment: Alignment.center,
            height: 800,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 70, 20, 80),
            child: Container(
              alignment: Alignment.center,
              height: 600,
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15.0),
                      topRight: Radius.circular(15.0),
                      bottomLeft: Radius.circular(15.0),
                      bottomRight: Radius.circular(15.0))),
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  const Text(" Saral Urja",
                      style: TextStyle(
                          color: Color.fromARGB(
                            186,
                            12,
                            5,
                            123,
                          ),
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold)),
                  const SizedBox(height: 40),
                  // const Text("Survey form for the solar Proposal system"),
                  const SizedBox(height: 15),
                  Padding(
                      padding: const EdgeInsets.fromLTRB(30, 1, 30, 5),
                      //Input Field for email address
                      child: TextFormField(
                        controller: emailController,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Enter your email',
                          suffixIcon: Icon(Icons.person),
                        ),
                      )),
                  const SizedBox(height: 8),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30, 1, 30, 5),

                    //Input Field for password
                    child: TextFormField(
                        controller: passwordController,
                        obscureText: true,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Enter your password',
                          suffixIcon: Icon(Icons.remove_red_eye_sharp),
                        )),
                  ),
                  Row(
                    children: [
                      const Padding(padding: EdgeInsets.fromLTRB(5, 30, 0, 0)),
                      Checkbox(
                        value: this.value,
                        onChanged: (bool? value) {
                          setState(() {
                            this.value = value!;
                          });
                        },
                      ),
                      const Text("Remember Me",
                          style: TextStyle(
                              color: Color.fromARGB(186, 12, 5, 123))),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(" Forget Password",
                          style:
                              TextStyle(color: Color.fromARGB(186, 12, 5, 123)))
                    ],
                  ),
                  const SizedBox(height: 1),
                  MaterialButton(
                    child: const Text('Login'),
                    textColor: Colors.white,
                    splashColor: const Color.fromARGB(255, 103, 91, 95),
                    color: const Color.fromARGB(186, 12, 5, 123),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(35, 440, 35, 35),
            child: Container(
              height: 200,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage('assets/images/upper.jpg'),
                ),
              ),
            ),
          ),
        ])));
  }
}
