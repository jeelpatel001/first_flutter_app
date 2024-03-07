import 'package:flutter/material.dart';

class MyTextField extends StatefulWidget {
  const MyTextField({super.key});

  @override
  State<MyTextField> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  var userName = TextEditingController();
  var contactNumber = TextEditingController();
  var userPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Text field"),
      ),
      body: Center(
        child: Container(
          width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.all(10),
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/image/mesqure.png'),
                  backgroundColor: Colors.blue,
                  radius: 40,
                ),
              ),
              TextField(
                keyboardType: TextInputType.text,
                controller: userName,
                decoration: InputDecoration(
                  label: const Text("User Name"),
                  suffixIcon: const Icon(
                    Icons.verified_user,
                    color: Colors.blueGrey,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(
                      color: Colors.blue,
                      width: 3,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(
                      color: Colors.blueGrey,
                      width: 1,
                    ),
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(
                      color: Colors.black,
                      width: 1,
                    ),
                  ),
                ),
              ),
              const Divider(
                height: 10,
                color: Colors.white,
              ),
              TextField(
                keyboardType: TextInputType.phone,
                controller: contactNumber,
                decoration: InputDecoration(
                  suffixIcon: const Icon(
                    Icons.call,
                    color: Colors.blueGrey,
                  ),
                  prefixText: "+91",
                  label: const Text("Contact Number"),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(
                      color: Colors.blue,
                      width: 3,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(
                      color: Colors.blueGrey,
                      width: 1,
                    ),
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(
                      color: Colors.black,
                      width: 1,
                    ),
                  ),
                ),
              ),
              const Divider(
                height: 10,
                color: Colors.white,
              ),
              TextField(
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
                // obscuringCharacter: "*",
                controller: userPassword,
                decoration: InputDecoration(
                  suffixIcon: const Icon(
                    Icons.password,
                    color: Colors.blueGrey,
                  ),
                  label: const Text("User Password"),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(
                      color: Colors.blue,
                      width: 3,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(
                      color: Colors.blueGrey,
                      width: 1,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: SizedBox(
                  width: 150,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      String uName = userName.text.toString();
                      String uContactNumber = contactNumber.text.toString();
                      String uPassword = userPassword.text.toString();

                      print(uName);
                      print(uContactNumber);
                      print(uPassword);
                    },
                    child: const Text("Submit"),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}