import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Login Screen"
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("Login",
          style: TextStyle(
            fontSize: 35,
            color: Colors.teal,
            fontWeight: FontWeight.bold,
          ),),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30),
            child: Form(child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      labelText: "email",
                      hintText: "Enter email",
                      prefixIcon: Icon(Icons.mail),
                      border: OutlineInputBorder(),
                    ),
                    onChanged: (String value){

                    },
                    validator: (Value){
                      return Value!.isEmpty? " Please enter mail ":null;
                    },
                  ),
                ),
                SizedBox(height: 18),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: TextFormField(
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                      labelText: "password",
                      hintText: "Enter Password",
                      prefixIcon: Icon(Icons.password),
                      border: OutlineInputBorder(),
                    ),
                    onChanged: (String value){

                    },
                    validator: (Value){
                      return Value!.isEmpty? " Please enter mail ":null;
                    },
                  ),
                ),
                SizedBox(height: 18),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: MaterialButton(
                    minWidth: double.infinity,
                      onPressed: (){},
                  child: Text("Login"),
                  color: Colors.teal,
                  textColor: Colors.white,),
                )
              ],
            ),
            ),
          ),
        ],
      ),
    );
  }
}
