import 'package:flutter/material.dart';

void main() {
  runApp(const CardApp());
}

class CardApp extends StatelessWidget {
  const CardApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

// class HomeScreen extends StatelessWidget {
//   const HomeScreen({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child:Container(
//           //EdgeInsets.all(): margin :outlayer, padding : inner layer
//           // margin: EdgeInsets.symmetric(horizontal:20,vertical: 50),
//           constraints: BoxConstraints.expand(
//             height: Theme.of(context).textTheme.headline4!.fontSize! * 1.1 + 200.0,
//           ),
//           alignment: Alignment.center,
//           margin: EdgeInsets.fromLTRB(70, 90, 100, 40),
//           padding: EdgeInsets.all(80),
//           height: 200,
//           width: 200,
//           decoration: BoxDecoration(
//             color: Colors.blueGrey,
//             borderRadius: BorderRadius.circular(10),
//           ),
//           child: Text("Hello World",style: Theme.of(context).textTheme.headline4!.copyWith(color: Colors.white)),
//              fontSize: 15,
//              color: Colors.redAccent,
//           ),),
//         );
//   }
// }

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.teal,
        body:SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/heko.jpg'),
                  radius:50,
                  backgroundColor: Colors.blue,
                  
                ),
                Text('Aayush Bhandari',style: TextStyle(
                  fontFamily: 'Pacifico',
                  color: Colors.white,
                  fontSize: 40,
                ),),
                Text('Flutter Developer',style: TextStyle(
                  fontFamily: 'Sanspro',
                  color: Colors.white,
                  fontSize: 20,
                  letterSpacing: 2.5,

                ),),
                SizedBox(
                  height: 50,
                  width: 300,
                  child: Divider(
                    thickness: 1,
                    color: Colors.white,
                  ),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  margin: EdgeInsets.symmetric(horizontal: 20),
                 child: ListTile(
                   leading: Icon(Icons.phone,color: Colors.teal,),
                   title: Text('977-9885067695',style: TextStyle(color: Colors.teal),),
                 ),
                ),
                /*Padding(
                  padding: const EdgeInsets.all( 20.0),
                  child: Container(

                    height: 70,

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Row(
                        children: [
                          Icon(Icons.phone,color: Colors.teal,),
                          SizedBox(
                            width: 70,
                          ),
                          Text('+977 9885067695 ',style: TextStyle(color: Colors.teal,fontSize: 16),),
                        ],
                      ),
                    ),


                  ),
                ),*/
                SizedBox(
                  height:30,

                ),
                Card(

                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: ListTile(
                    leading: Icon(Icons.mail,color: Colors.teal,),
                    title: Text('aayush2658@gmail.com',style: TextStyle(color: Colors.teal),),
                  ),
                )

                /*Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),

                  child: Container(

                    height: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(25.0),

                      child: Row(
                        children: [
                          Icon(Icons.mail,color: Colors.teal,),
                          SizedBox(
                            width: 70,
                          ),
                          Text('aayush2658@gmail.com',style: TextStyle(color:Colors.teal ,fontSize: 16),),
                        ],
                      ),
                    ),
                  ),
                ),*/



                
              ],

            )

        )


    );
  }
}