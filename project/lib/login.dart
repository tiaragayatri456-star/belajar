import 'package:flutter/material.dart';
import 'package:project/bottom.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
      children: [
        Container(
          width: double.infinity,
          color: Colors.indigoAccent,
          child: Padding(
            padding: const EdgeInsets.all(30),
            child: Column(
              children: [
                Text("Connected", style: TextStyle(
                  fontSize: 22,
                  color: Colors.white,
                  fontWeight: FontWeight.bold
                ),),
                Text("Your favorite social network", style: TextStyle(
                  fontSize: 13,
                  color: Colors.white
                ),)
              ],
            ),
          ),
        ),
        Positioned(
          top: 120,
          left: 0,
          right: 0,
          child: Container(
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Login", style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                      ),
                      ),
                      SizedBox(height: 75,),
                      Text("Username", style: TextStyle(
                        fontSize: 11,
                        color: Colors.black
                      ),),
                      SizedBox(height: 5,),
                      Container(
                        height: 45,
                        child: TextFormField(
                          decoration: InputDecoration(
                            border:
                                OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                            prefixIcon: Icon(Icons.person),
                          ),
                        ),
                      ),
                      SizedBox(height: 15,),
                      Row(
                        children: [
                          Text("Password", style: TextStyle(
                            fontSize: 11,
                            color: Colors.black
                          ),),
                          Spacer(),
                          Text("Forgot your password?", style: TextStyle(
                            fontSize: 11,
                            color: Colors.lightBlue
                          ),),
                        ],
                      ),
                      SizedBox(height: 5,),
                      Container(
                        height: 45,
                        child: TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                            border:
                                OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                            prefixIcon: Icon(Icons.key),
                          ),
                        ),
                      ),
                      SizedBox(height: 15,),
                      Container(
                        height: 45,
                          child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) => BottomNav()));
                              },
                              child: Text("Login"),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.indigoAccent,
                                foregroundColor: Colors.white,
                                minimumSize: Size(double.infinity, 54),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),)
                              ),
                          ),
                      ),
                    ],
                  ),
              ),
            ),
          ),
        ),
      ],
    )
    );
}
}