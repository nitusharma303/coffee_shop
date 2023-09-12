import 'package:coffee_shop/coffeabout.dart';
import 'package:flutter/material.dart';
void main() {

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Coffee Shop',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme:ColorScheme.light(),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: ''),
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  void _incrementCounter() {
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      body:SizedBox(
    width:400,
    height: 900,
    child: Stack(
    children: <Widget>[
      Container(
    decoration: BoxDecoration(
    gradient: LinearGradient(
    begin: Alignment.bottomCenter,
    end: Alignment.topCenter,
    colors: <Color>[
    Colors.black,
    Colors.black
    ],
    ),
    ),
    ),
      CoffeeBanner(),
      Banneruppertext(),
      ]
    )
    )
    );
  }
}

//Create Banner class here
class CoffeeBanner extends StatelessWidget {  @override
  Widget build(BuildContext context) {
    return Container(
      child:Image.asset('assets/images/coffeebnr.png', width:400,height:520,),
    );
  }
}
// Create Bannerupper text here
class Banneruppertext extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only( top:45),
      child: Container(
        margin: EdgeInsets.only(top:45),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 280,
            ),
            Center(
              child: Container(
                width: 300,
                height: 200,
                margin: EdgeInsets.only(top: 30,bottom:0),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only( top:30,left: 12,),
                    child: Text('Coffee so good, your taste buds will love it '
                      ,style: TextStyle(color: Colors.white,fontWeight: FontWeight.w800,fontSize:36),textAlign:TextAlign.center,),
                  ),
                ),
              ),
            ),
            Center(
              child: Container(
                  width: 270,
                  margin: EdgeInsets.only(top: 23,bottom: 0),
                  child: Center(
                    child: Text('The best grain,finesr roast,the'
                        ' powerful flavor.',style: TextStyle(color: Colors.white,fontSize: 17,fontWeight: FontWeight.w400),textAlign: TextAlign.center,),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25),
              child: Container(
                width: 290,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child:Padding(
                  padding: const EdgeInsets.all(8),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 14,right: 7,top: 3,bottom: 3),
                        child: Center(child: InkWell(
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                // here we give the second screen class name
                                CoffeAbout(),
                              ),
                            );
                          },
                            child: Image.asset('assets/images/Google_Logo.png'))),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 13),
                        child: Text('Continue with Google'),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
// class SwitchAboutpage extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     return  Positioned(
//       top: 80,
//       child: ElevatedButton(
//         onPressed: () {
//           // Step 3 <-- SEE HERE
//
//         },
//         child: Container(
//           width:5,
//             child: Icon(Icons.arrow_back_ios,))
//       ),
//     );
//   }
// }