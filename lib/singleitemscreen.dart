import 'package:coffee_shop/orderitemscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:readmore/readmore.dart';
class SingleItemScreen extends StatelessWidget{
  String img;
  SingleItemScreen(this.img);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        width:double.infinity,
        height:double.infinity,
        margin: EdgeInsets.symmetric(horizontal:25 ),
        child: Column(
          children: [
            Expanded(
              flex: 1,
                child: Container(
              color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.only(top:20 ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: (){
                            Navigator.pop(context);
                          },
                          child: Icon(Icons.arrow_back_ios),
                        ),
                        Text('Detail',style: TextStyle(fontWeight: FontWeight.w500,color:Colors.black,fontSize: 18 ),),
                        Image.asset('assets/images/Heart.png')
                      ],
                    ),
                  ),
            )),
            //Image codes is here part2
            Expanded(
                flex: 3,
                child: Container(

                  decoration: BoxDecoration(
                      color:Colors.white,
                    // border: Border(
                    //   bottom: BorderSide(color: Colors.deepOrangeAccent,width:2),
                    //
                    // )
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Container(
                      width:400,
                      height:210,
                      child: ClipRRect  (
                        borderRadius: BorderRadius.circular(15),
                          child: Image.asset('assets/images/$img.png',fit:BoxFit.cover,)),
                    ),
                     Padding(
                       padding: const EdgeInsets.only(top:7,bottom:2 ),
                       child: Text('Cappucino',style: TextStyle(fontSize:21,fontWeight:FontWeight.bold,color: Colors.black),),
                     ),
                      Text('with chocolate',style: TextStyle(fontSize:12,fontWeight:FontWeight.w400,color: Colors.black26),),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.star,color: Colors.yellow.shade700,),
                              RichText(
                                  text:TextSpan(
                                    style: TextStyle(color: Colors.black54,fontSize:10),
                                    children: <TextSpan>[
                                      TextSpan(text: ' 4.8 ',style: TextStyle(color: Colors.black,fontSize: 16)),
                                      TextSpan(text: '(230)'),
                                    ]
                                  ))
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                width: 40,
                                height: 35,
                                decoration: BoxDecoration(
                                    color: Colors.orange.shade200,
                                    borderRadius: BorderRadius.circular(5)
                                ),
                                // child: Image.asset('assets/images/cb1.png'),
                              ),
                              Container(width:20 ,),
                              Container(
                                  width: 40,
                                  height:35,
                                  decoration: BoxDecoration(
                                      color: Colors.orange.shade200,
                                      borderRadius: BorderRadius.circular(5)
                                  ),
                                  // child: Image.asset('asstes/images/coffeebean.png')
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                )
            ),
            Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.only(top: 17),
                  child: Container(width: double.infinity,
                    decoration: BoxDecoration(
                      border:Border(top: BorderSide(color: Colors.black12) ,
                    )),
                    child:Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 18),
                          child: Text('Description',style: TextStyle(fontSize: 22,fontWeight: FontWeight.w600),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 13),
                          child: SingleChildScrollView(
                            child: Container(
                              height: 100,
                              child: ReadMoreText('A cappuccino is an approximately 150 ml (5 oz) beverage,'
                                  ' with 25 ml of espresso coffee and 85ml of fresh milk the fo..'
                                  'A cappuccino is an approximately 150 ml (5 oz) beverage,'
                                  ,
                                style: TextStyle(color: Colors.black38,fontSize:17 ),
                                moreStyle: TextStyle(color: Colors.deepOrangeAccent,fontSize:18,fontWeight:FontWeight.w600  ),
                                trimLines: 3,
                                textAlign: TextAlign.justify,
                                trimMode: TrimMode.Line,
                                trimCollapsedText: 'Read More',
                                trimExpandedText: 'Read Less',
                                lessStyle: TextStyle(color: Colors.deepOrangeAccent,fontSize:18,fontWeight:FontWeight.w600),
                              ),
                            ),
                          ),
                        )

                      ],
                    ),
                  ),
                )),
            Expanded(
                flex: 1,
                child: Container(
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 14),
                        child: Text('Size',style: TextStyle(fontSize:25,fontWeight:FontWeight.bold ),),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 100,
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(color: Colors.black26,width: 1)
                            ),
                            child: Center(child: Text('S',style: TextStyle(fontSize: 30,fontWeight: FontWeight.w400),)),
                          ),
                          Container(
                            width: 100,
                            height: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: Colors.deepOrange.shade100,
                                border: Border.all(color: Colors.deepOrange,width: 1)
                            ),
                            child: Center(child: Text('M',style: TextStyle(fontSize: 30,fontWeight: FontWeight.w400,color: Colors.deepOrange),)),
                          ),
                          Container(
                            width: 100,
                            height: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(color: Colors.black26,width: 1)
                            ),
                            child: Center(child: Text('L',style: TextStyle(fontSize: 30,fontWeight: FontWeight.w400,),)),
                          ),
                        ]

                      )
                    ],
                  ),
                )),
            Expanded(
                flex: 1,
                child: Container(
                  width: double.infinity,
                  child:Row(
                    children: [
                      Container(
                        width: 130,
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 14),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Price',style: TextStyle(color: Colors.black38,fontWeight:FontWeight.w400,fontSize: 21 )),
                              Text('\$ 4.53',style: TextStyle(color: Colors.deepOrangeAccent,fontWeight:FontWeight.w700,fontSize: 24 )),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical:13),
decoration: BoxDecoration(
  color: Colors.deepOrangeAccent,
  borderRadius: BorderRadius.circular(12)
),
                        child: ConstrainedBox(
                          constraints:BoxConstraints.tightFor(height: 100,width:210) ,
                          child: TextButton(
                            onPressed:(){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>OrderItemListScreen(img)));
                            } ,
                            child:Text("Buy Now",style: TextStyle(color: Colors.white,fontSize:23),),
                          ),
                        ),
                      ),
                    ],
                  ),
                )),
          ],
        ),
      )
    );
  }

}