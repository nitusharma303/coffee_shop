import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
class OrderItemListScreen extends StatelessWidget{
  String img;
  OrderItemListScreen(this.img);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Padding(
        padding: const EdgeInsets.symmetric(horizontal:22 ),
        child: Column(
          children: [
            //Orderitem header work
            Expanded(
              flex: 1,
              child: Container(
                color:Colors.white,
                child: Padding(
                  padding: const EdgeInsets.only(top:29),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      IconButton(onPressed: (){
                        Navigator.pop(context);
                      },
                          icon:Icon(Icons.arrow_back_ios)),
                      Container(width: 110,),
                      Text('Order',style: TextStyle(fontWeight: FontWeight.w600,fontSize:16),)
                    ],
                  ),
                ),

              ),
            ),
            //Orderitem deliver and pickup code here
            Expanded(
              flex: 1,
              child: Container(
                color:Colors.white,
                child:Container(
                  margin: EdgeInsets.symmetric(vertical: 8),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.black12
                  ),
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(horizontal:6,vertical: 2),
                        width:160,
                        height:48,
                        decoration: BoxDecoration(
                            color: Colors.deepOrangeAccent,
                          borderRadius: BorderRadius.circular(12)
                        ),
                        child: Center(child: Text('Deliver',style:TextStyle(color:Colors.white,fontSize:17,fontWeight: FontWeight.w500),)),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal:6),
                        width:160,
                        height: 50,
                        decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(12)
                        ),
                        child: Center(child: Text('Pick Up',style:TextStyle(fontSize:17),)),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            // delivery address course
            Expanded(
              flex: 3,
              child: Container(
                decoration: BoxDecoration(
                  border: Border(bottom:BorderSide(color:Colors.black12,width:1),
                  ),
                ),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical:4),
                      child: Text('Delivery Address',style: TextStyle(fontWeight:FontWeight.w700,fontSize:18),),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical:4),
                      child: Text('JI. Kpg Sutoyo',style: TextStyle(fontWeight:FontWeight.w500,fontSize:15),),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical:6),
                      child: Text('Kpg. Sutoyo No. 620, Bilzen, Tanjungbalai.',style: TextStyle(fontWeight:FontWeight.w300,fontSize:12),),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical:10),
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top:5),
                            width:140,
                            height:30,
                            decoration: BoxDecoration(
                              borderRadius:BorderRadius.circular(20),
                              border:Border.all(color: Colors.black26)
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.edit,size:15,),
                                Padding(
                                  padding: const EdgeInsets.only(left: 5),
                                  child: Text('Edit Address',),
                                )
                              ],
                            ),
                          ),
                          Container(width: 20,),
                          Container(
                            margin: EdgeInsets.only(top:5),
                            width:140,
                            height:30,
                            decoration: BoxDecoration(
                                borderRadius:BorderRadius.circular(20),
                                border:Border.all(color: Colors.black26)
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.note_alt,size:15,),
                                Padding(
                                  padding: const EdgeInsets.only(left:4),
                                  child: Text('Add Note',),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            // addition item code here
            Expanded(
              flex: 2,
              child: Container(
                margin: EdgeInsets.only(bottom:14),
                width:double.infinity,
                decoration: BoxDecoration(
                  border: Border(bottom:BorderSide(color:Colors.black12,width:1),
                ),),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: 90,
                      height: 70,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(6),
                          child: Image.asset('assets/images/$img.png',fit: BoxFit.cover,)),
                    ),
                    Container(
                      width: 120,
                      height: 60,
                      child: Column(
                        children: [
                          Text('Cappucino',style: TextStyle(fontSize:21,fontWeight:FontWeight.bold,color: Colors.black),),
                          Text('with chocolate',style: TextStyle(fontSize:12,fontWeight:FontWeight.w400,color: Colors.black26),),
                        ],
                      ),
                    ),
                    Container(
                      width:100,
                      child: Row(
                        children: [
                          Container(width:35,
                          height: 35,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(color:Colors.black26,width:1)
                                                              ),
                            child: Center(child: Text(' - ',style: TextStyle(fontSize:20,color: Colors.black54,fontWeight: FontWeight.w600),)),
                          ),
                          Container(width:25,
                            height: 25,

                            child: Center(child: Text(' 1 ',style: TextStyle(fontSize:20,color: Colors.black,fontWeight: FontWeight.w400),)),
                          ),
                          Container(width:35,
                            height: 35,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(color:Colors.black26,width:1)
                            ),
                            child: Center(child: Text(' + ',style: TextStyle(fontSize:20,color: Colors.black,fontWeight: FontWeight.w400),)),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            //Discount container
            Expanded(
              flex: 1,
              child: Container(
                margin: EdgeInsets.symmetric(vertical:8),
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.black26)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(

                      children: [
                        Icon(Icons.discount,color: Colors.deepOrangeAccent,),
                        Padding(
                          padding: const EdgeInsets.only(left: 4),
                          child: Text('1 Discount is applied',style: TextStyle(fontWeight:FontWeight.w500),),
                        ),
                      ],
                    )
                    ,
                    Icon(Icons.arrow_forward_ios,size:17,)
                  ],
                ),
              ),
            ),
            //payment summary code here
            Expanded(
              flex: 3,
              child: Container(
                width:double.infinity,
                child:Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical:5),
                          child: Text('Payment Summary',style:TextStyle(fontWeight: FontWeight.w600,fontSize:18)),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Price',style:TextStyle(fontWeight: FontWeight.w400,color:Colors.black54,fontSize:16)),
                          Text('\$ 4.53',style:TextStyle(fontWeight: FontWeight.w600,fontSize:16))
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical:2),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Delivery Fee',style:TextStyle(fontWeight: FontWeight.w400,color:Colors.black54,fontSize:16)),
                          Row(
                            children: [
                              Text('\$ 2.0 ',style:TextStyle(fontWeight: FontWeight.w300,fontSize:16,decoration:TextDecoration.lineThrough)),
                              Text(' \$ 1.0',style:TextStyle(fontWeight: FontWeight.w600,fontSize:16)),
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      width:double.infinity,
                      margin: EdgeInsets.only(top:16),
                      height:50,
                      decoration: BoxDecoration(
                        border: Border(top: BorderSide(color:Colors.black26,),bottom:BorderSide(color: Colors.black26))
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 2),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Total Payment',style:TextStyle(fontWeight: FontWeight.w400,color:Colors.black54,fontSize:16)),
                            Text('\$  5.53',style:TextStyle(fontWeight: FontWeight.w600,fontSize:16))
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            // payment code here
            Expanded(
              flex: 1,
              child: Container(
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width:150,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween
                        ,children: [
                          Icon(Icons.money,color: Colors.deepOrangeAccent,),
                          Container(
                            alignment: Alignment.center,
                            width: 50,
                            height:26,
                            decoration:BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.deepOrangeAccent,

                            ),
                              child: Text('cash',style: TextStyle(color: Colors.white),)),
                          Text('\$ 5.53'),
                        ],
                      ),
                    ),
                    Container(
                      child:Image.asset('assets/images/dots.png',)
                    ),
                  ],
                ),
              ),),
            Expanded(
                flex: 1,
                child: Container(
                  margin: EdgeInsets.only(bottom:4),
                  width:double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.deepOrangeAccent,
                    borderRadius: BorderRadius.circular(12)
                  ),
                  child:TextButton(
                    onPressed: (){

                    },
                    child:Text('Order',style: TextStyle(color: Colors.white,fontWeight:FontWeight.w600,fontSize:21),),
                  ),
                ),
            ),
          ],
        ),
      ),
    );
  }

}
