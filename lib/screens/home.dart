import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          color: Colors.green,
          padding: const EdgeInsets.all(5),
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  "Welcome to Zoodeng",
                  style: TextStyle(
                    fontSize: 30,
                    letterSpacing: 1,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  "Your one-stop solution for all your needs",
                  style: TextStyle(
                    fontSize: 20,
                    letterSpacing: 1,
                    color: Colors.white,
                  ),
                ),
                Image.network(
                  "https://scontent.fbkk5-6.fna.fbcdn.net/v/t39.30808-6/496986554_1233828245194989_7644116513892814171_n.jpg?stp=cp6_dst-jpg_tt6&_nc_cat=102&ccb=1-7&_nc_sid=833d8c&_nc_ohc=M2shq6VZRw4Q7kNvwERXxWg&_nc_oc=AdmIvoQqC0R7ApUY-fMau9V1ynrKc5xvN_wqv02BmBLrsimDk6v33XoJ6AUJ2XeJk2O1FEQqZY19VdkVz4Ctlw32&_nc_zt=23&_nc_ht=scontent.fbkk5-6.fna&_nc_gid=Wqj0uxsFg0zJznjyzytH1g&oh=00_AfLOjysExXmJ5NFJzWa1GN8gEMbxttdD4srvASctN0Y1nQ&oe=682E256F",
                  width: 200,
                ),
                const SizedBox(height: 10),
                Image.asset(
                  "assets/images/pic1.png",
                  width: 150,
                ),
                const SizedBox(height: 10),
                TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.brown,
                    padding: const EdgeInsets.symmetric(
                      vertical: 15,
                      horizontal: 30,
                    ),
                  ),
                  onPressed: () {
                    print("Button clicked");
                  },
                  child: const Text(
                    "Text Button",
                    style: TextStyle(
                      fontSize: 20,
                      letterSpacing: 1,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                FilledButton(
                    onPressed: () {
                      print("Filled button clicked");
                    },
                    child: const Text(
                      "Filled Button",
                      style: TextStyle(
                        fontSize: 20,
                        letterSpacing: 1,
                        color: Colors.white,
                      ),
                    )),
                const SizedBox(height: 10),
                OutlinedButton(
                    style: OutlinedButton.styleFrom(
                        side: const BorderSide(color: Colors.brown, width: 5)),
                    onPressed: () {
                      print("Outlined button clicked");
                    },
                    child: const Text(
                      "Outlined Button",
                      style: TextStyle(
                        fontSize: 20,
                        letterSpacing: 1,
                        color: Colors.white,
                      ),
                    )),
                const SizedBox(height: 10),
                ElevatedButton(
                    onPressed: () {
                      print("Elevated button clicked");
                    },
                    child: const Text(
                      "Elevated Button",
                      style: TextStyle(
                        fontSize: 20,
                        letterSpacing: 1,
                        color: Colors.black,
                      ),
                    )),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
