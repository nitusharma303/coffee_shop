
import 'package:coffee_shop/widgets/bottom_nav_bar.dart';
import 'package:coffee_shop/widgets/coffeeitems.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class  CoffeAbout extends StatefulWidget{
  @override
  State<CoffeAbout> createState() => _CoffeAboutState();
}

class _CoffeAboutState extends State<CoffeAbout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 900,
                    ),
                    Container(
                      width: double.infinity,
                      height: 250,
                      decoration: BoxDecoration(
                        color: Colors.black87,
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            top: 35,
                            left: 320,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(7),
                              child: Container(width: 60,
                                height: 70,
                                color: Colors.transparent,
                                child: Image.asset('assets/images/girl.png'),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 20,
                            top: 35,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Location', style: TextStyle(color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400),),
                                Row(
                                  children: [
                                    Text('Bilzen,Tanjungbalai', style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 21,
                                        fontWeight: FontWeight.w400)),
                                    Icon(Icons.arrow_drop_down, color: Colors.white,)
                                  ],
                                )
                              ],
                            ),
                          ),
                          CoffeeSearchBox(),
                        ],
                      ),
                    ),
                    BuyoneBanner(),
                    Itembar(),
                  ],
                ),
              ],
            ),
          ),
        ),
         bottomNavigationBar:BottomNavBar(),
    );
  }
}



// / SearchBox items00.
class CoffeeSearchBox extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
     return  Center(
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
           // SizedBox(height:20,),
           Container(
             margin: EdgeInsets.only(top: 18),
             width: 350,
             height: 60,
             decoration: BoxDecoration(
               color: Colors.white12,
               borderRadius: BorderRadius.circular(21),
             ),
             child: TextField(
               decoration: InputDecoration(
                 border: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(21),
                   borderSide: BorderSide(
                     color: Colors.orange,
                   ),
                 ),
                     hintText: "Search coffee",
                 hintStyle:TextStyle(color: Colors.white54),
                 prefixIcon: Icon(Icons.search,color: Colors.white,size:27 ,),
                 suffixIcon:Positioned(
                   right: 30,
                   child: Container( width: 20,
                       height: 16,
                       margin: EdgeInsets.only(right:6 ),
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(10),
                         color: Colors.deepOrangeAccent.shade200,
                       ),
                       child:Image.asset('assets/images/setting-4.png'),
                 ) ,
               ),
               )
             ),
           ),
         ],
       ),
     );
  }
}


// Buy one get one free banner
class BuyoneBanner extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return  Positioned(
      top: 180,
      left: 35,
      child: Container(
        height: 400,
        child: Stack(
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset('assets/images/coffeemug.png')
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 20,left:27),
                  width: 70,
                  height: 30,
                  decoration: BoxDecoration(
                      color: Colors.red.shade500,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Text('Promo',style: TextStyle(fontWeight: FontWeight.w800,fontSize:19,color:Colors.white,),textAlign:TextAlign.center,),
                ),
                Container(
                    margin: EdgeInsets.only(left: 30,top:12 ),
                    width: 150,
                    height:80,
                    child: Text('Buy one get one Free',
                      style: TextStyle(color: Colors.white,
                        fontWeight: FontWeight.w800,
                        fontSize:25 ,
                        wordSpacing: 4,
                        backgroundColor: Colors.black,
                      ) ,)
                ),

              ],
            ),

          ],
        ),
      ),
    );
  }
}




// Tabbar
class Itembar  extends StatefulWidget {
  const Itembar ({Key? key}): super(key:key);

  @override
  State<Itembar> createState() => _ItembarState();
}

class _ItembarState extends State<Itembar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 5,
        child: Column(
          children: [
            SizedBox(height: 320,),
            Material(
              child: Container(
                 height:70,
                 color: Colors.white,
                 child: TabBar(
                   physics: const ClampingScrollPhysics(),
                   padding: EdgeInsets.only(top: 10,bottom: 10,left: 15,),
                   labelColor: Colors.white,
                   unselectedLabelColor: Colors.black,
                   unselectedLabelStyle: TextStyle(color: Colors.green),
                   indicatorSize: TabBarIndicatorSize.tab,
                   indicator: BoxDecoration(
                     borderRadius: BorderRadius.circular(4),
                     color: Colors.deepOrangeAccent,
                     border: Border.all(color: Colors.deepOrangeAccent)
                   ),
                   labelPadding: EdgeInsets.symmetric(horizontal:5),
                   tabs: [
                     Tab(
                     child: Container(
                       height:60,
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(5),
                         border: Border.all(color: Colors.transparent,width: 1)
                       ),
                       child: Align(
                         alignment: Alignment.center,
                         child: Text(' Cappuccino ',),
                       ),
                     ),
                   ),
                     Tab(
                       child: Container(
                         height: 50,
                         decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(5),
                             border: Border.all(color: Colors.transparent,width: 1)
                         ),
                         child: Align(
                           alignment: Alignment.center,
                           child: Text('Machiato',),
                         ),
                       ),
                     ),
                     Tab(
                       child: Container(
                         height: 50,
                         decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(5),
                             border: Border.all(color: Colors.transparent,width: 1)
                         ),
                         child: Align(
                           alignment: Alignment.center,
                           child: Text('Latte',),
                         ),
                       ),
                     ),
                     Tab(
                       child: Container(
                         height: 50,
                         decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(5),
                             border: Border.all(color: Colors.transparent,width: 1)
                         ),
                         child: Align(
                           alignment: Alignment.center,
                           child: Text('Am',style:TextStyle(),),
                         ),
                       ),
                     )
                   ],
                 )
              ),
            ),
            TabBarView(children: [
              CoffeeItems(),
              CoffeeItems(),
              CoffeeItems(),
              CoffeeItems()
            ])


          ],
        )
    )
    ;
  }
}