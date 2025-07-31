import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.grey.shade100,
        title: Text("Connected ",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(Icons.notifications),
          )
        ],

      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              Row(
                children: [
                  Column(
                    children: [
                      Container(
                        width: 55,
                          height: 55,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black,),
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(100)
                          ),
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Container(
                            width: 55,
                            height: 55,
                            child: Center(
                              child: Text("+",
                                style: TextStyle(
                                  fontSize: 25,
                                ),
                              )
                              ),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black,),
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(100)
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 7,),
                      Text("You", style: TextStyle(
                        fontSize: 13
                      ),)
                    ],
                  ),
                  SizedBox(width: 10,),
                  Column(
                    children: [
                      Container(
                        width: 55,
                          height: 55,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.blueAccent,),
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(100)
                          ),
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Container(
                            width: 55,
                            height: 55,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/user.png'),
                                fit: BoxFit.cover,
                              ),
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(100),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 7,),
                      Text("Jeremiah", style: TextStyle(
                        fontSize: 13
                      ),)
                    ],
                  )
                ],
              ),
              SizedBox(height: 15,),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white
                ),
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 35,
                            height: 35,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/user.png'),
                                fit: BoxFit.cover,
                              ),
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(100),
                            ),
                          ),
                          SizedBox(width: 10,),
                          Text("blackdisciples9_", style: TextStyle(
                            fontSize: 13
                          ),),
                          Spacer(),
                          Icon(Icons.more_horiz_rounded)
                        ],
                      ),
                      SizedBox(height: 10,),
                      Image(image: AssetImage('assets/oblock.jpg'),),
                      SizedBox(height: 10,),
                      Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus porta fermentum commodo. Vivamus et cursus odio. Fusce mollis quam id vehicula commodo.", style: TextStyle(fontSize: 13),),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Icon(Icons.messenger_sharp, size: 18,),
                          SizedBox(width: 5,),
                          Text("20 Comments", style: TextStyle(fontSize: 13),),
                          Spacer(),
                          Text("You & 300 Others", style: TextStyle(fontSize: 13),),
                          SizedBox(width: 5,),
                          Icon(Icons.favorite, size: 18,),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 15,),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white
                ),
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 35,
                            height: 35,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/user.png'),
                                fit: BoxFit.cover,
                              ),
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(100),
                            ),
                          ),
                          SizedBox(width: 10,),
                          Text("quotes2_", style: TextStyle(
                            fontSize: 13
                          ),),
                          Spacer(),
                          Icon(Icons.more_horiz_rounded)
                        ],
                      ),
                      SizedBox(height: 10,),
                      Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus porta fermentum commodo. Vivamus et cursus odio. Fusce mollis quam id vehicula commodo.", style: TextStyle(fontSize: 13),),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Icon(Icons.messenger_sharp, size: 18,),
                          SizedBox(width: 5,),
                          Text("20 Comments", style: TextStyle(fontSize: 13),),
                          Spacer(),
                          Text("You & 300 Others", style: TextStyle(fontSize: 13),),
                          SizedBox(width: 5,),
                          Icon(Icons.favorite, size: 18,),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 15,),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white
                ),
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 35,
                            height: 35,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/user.png'),
                                fit: BoxFit.cover,
                              ),
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(100),
                            ),
                          ),
                          SizedBox(width: 10,),
                          Text("blackdisciples9_", style: TextStyle(
                            fontSize: 13
                          ),),
                          Spacer(),
                          Icon(Icons.more_horiz_rounded)
                        ],
                      ),
                      SizedBox(height: 10,),
                      Image(image: AssetImage('assets/LS.jpg'),),
                      SizedBox(height: 10,),
                      Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus porta fermentum commodo. Vivamus et cursus odio. Fusce mollis quam id vehicula commodo.", style: TextStyle(fontSize: 13),),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Icon(Icons.messenger_sharp, size: 18,),
                          SizedBox(width: 5,),
                          Text("20 Comments", style: TextStyle(fontSize: 13),),
                          Spacer(),
                          Text("You & 300 Others", style: TextStyle(fontSize: 13),),
                          SizedBox(width: 5,),
                          Icon(Icons.favorite, size: 18,),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );

}
}