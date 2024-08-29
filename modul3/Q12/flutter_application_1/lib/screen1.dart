import 'package:flutter/material.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 7,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 30,
              width: 30,
              decoration:
                  BoxDecoration(shape: BoxShape.circle, color: Colors.grey),
              child: Icon(Icons.arrow_back),
            ),
            Container(
              height: 30,
              width: 30,
              decoration:
                  BoxDecoration(shape: BoxShape.circle, color: Colors.grey),
              child: Icon(Icons.search),
            ),
          ],
        ),
      ),
      body: Container(
        child: Column(
          children: [
            Row(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 20, top: 20),
                      child: Container(
                          child: Text(
                        "Restaurent",
                        style: TextStyle(
                            fontSize: 26, fontWeight: FontWeight.bold),
                      )),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          Container(
                            height: 30,
                            width: 80,
                            decoration: BoxDecoration(
                                color: Colors.grey[300],
                                borderRadius: BorderRadius.circular(8)),
                            child: Center(child: Text("20 30 min")),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Container(
                              height: 30,
                              width: 80,
                              decoration: BoxDecoration(
                                  color: Colors.grey[100],
                                  borderRadius: BorderRadius.circular(10)),
                              child: Center(child: Text("2-4 km"))),
                          SizedBox(
                            width: 5,
                          ),
                          Container(
                              height: 30,
                              width: 80,
                              decoration: BoxDecoration(
                                  color: Colors.grey[100],
                                  borderRadius: BorderRadius.circular(10)),
                              child: Center(child: Text("Restaurent"))),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 70,),

                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Center(child: Text("R",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40),)),
                ),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(child: Text("orange sandwiches is delicious",style: TextStyle(fontWeight: FontWeight.bold),)),
                ),
                Padding(padding: EdgeInsets.all(8),
                child: Row(children: [
                   Icon(Icons.star,color: Colors.amber,),
                      Text("4.7",style: TextStyle(fontWeight: FontWeight.bold))
                ],),
                )
              ],
            ),
               SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Scrollbar(
                 child: Row(
                   children: [
                     Container(
                      height: 30,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(15)
                      ),
                      child: Center(child: Text("Recomennded")),),
                      SizedBox(width: 10,),
                       Container(
                      height: 30,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(15)
                      ),
                      child: Center(child: Text("Popular")),),
                      SizedBox(width: 10,), 
                     Container(
                      height: 30,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(15)
                      ),
                      child: Center(child: Text("Noodels")),),
                      SizedBox(width: 10,),
                      Container(
                      height: 30,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(15)
                      ),
                      child: Center(child: Text("pizza")),),
                      SizedBox(width: 10,),
                       Container(
                      height: 30,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(15)
                      ),
                      child: Center(child: Text("Burger")),),
                       SizedBox(width: 10,),
                      Container(
                      height: 30,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(15)
                      ),
                      child: Center(child: Text("Soup")),),
                   ],
                 )),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Card(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        radius: 60,
                        backgroundImage: AssetImage("assets/SOUP.jpg"),
                      ),
                    ),
                    SizedBox(width: 5,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                     Text("Soba Soup",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                      Text("No1.in sales",style: TextStyle(color: Colors.amber,fontWeight: FontWeight.bold,fontSize: 16),),
                      Text("Rs.120",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 100),
                      child: Icon(Icons.arrow_forward_ios),
                    ),
                  ],
                ),
              ),
            ),
             SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Card(
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        radius: 60,
                        backgroundImage: AssetImage("assets/plate.jpg"),
                      ),
                    ),
                    SizedBox(width: 5,),
                    Padding(
                      padding: const EdgeInsets.only(top: 40,right: 60),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                       Text("Sei Ua Samun Phrai",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                        Text("No1.in sales",style: TextStyle(color: Colors.amber,fontWeight: FontWeight.bold,fontSize: 16),),
                        Text("Rs.120",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                        ],
                      ),
                    ),
                     Padding(
                      padding: const EdgeInsets.only(bottom: 100),
                      child: Icon(Icons.arrow_forward_ios),
                    ),
                  ],
                ),
              ),
            ),
                SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Card(
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        radius: 60,
                        backgroundImage: AssetImage("assets/pasta.jpg"),
                      ),
                    ),
                    SizedBox(width: 5,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                     Text("Rtatoullie Pasta",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                      Text("No1.in sales",style: TextStyle(color: Colors.amber,fontWeight: FontWeight.bold,fontSize: 16),),
                      Text("Rs.120",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                      ],
                    ),
                     Padding(
                      padding: const EdgeInsets.only(bottom: 100),
                      child: Icon(Icons.arrow_forward_ios),
                    ),
                  ],
                ),
              ),
            ),
            
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.amber,
        onPressed: (){},child: Icon(Icons.shopping_bag),),
    );
  }
}
