import 'package:flutter/material.dart';

import '../singleitemscreen.dart';
 
class CoffeeItems extends StatefulWidget{
  @override
  State<CoffeeItems> createState() => _CoffeeItemsState();
}
class _CoffeeItemsState extends State<CoffeeItems> {
  @override
  Widget build(BuildContext context) {
   List<String>  img = [
     'coffee1',
     'coffee2',
     'coffee3',
     'coffee4',
   ];
   List<String> coffeename = [
     'cappino',
     'Machiato',
     'Latte',
     "Americano"
   ];
   // var item;
   // item.length >= 2;
    return GridView.count(
      physics: NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      shrinkWrap: true,
      childAspectRatio: (150/195),
      children: [
        for(int i = 0;i< img.length; i++)
          Container(
            padding: EdgeInsets.symmetric(vertical: 5,horizontal: 10),
            margin: EdgeInsets.symmetric(vertical: 8,horizontal: 13),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
              boxShadow: [BoxShadow(
                color: Colors.white,
                spreadRadius: 1,
                blurRadius: 4
              )]
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> SingleItemScreen(img[i])));
                  },
                  child: Stack(
                    children:[ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                        child: Image.asset('assets/images/${img[i]}.png',fit: BoxFit.cover,width:200,height: 120,)),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 10,left: 10),
                            child: Icon(Icons.star,color: Colors.deepOrangeAccent,),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10,left:4),
                            child: Text('4.8',style: TextStyle(color: Colors.white),),
                          )
                        ],
                      )
                    ]
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 12),
                  child: Text('${coffeename[i]}',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize:20 ),),
                ),
                Text('with chocolate',style: TextStyle(color: Colors.black38),),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('\$ 4.53',style: TextStyle(fontWeight: FontWeight.bold,fontSize:15),),
                    Container(
                      decoration:BoxDecoration(
                        color: Colors.deepOrangeAccent,
                        borderRadius: BorderRadius.circular(5)
                      ),
                      width: 25,
                      height: 25,
                      child: Icon(Icons.add,color: Colors.white,size:15 ,),
                    )
                  ],
                )
              ]
            ),
          )
      ],
    )
    ;
  }
}