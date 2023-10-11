import 'package:flutter/material.dart';

import 'color.dart';
import 'homepage.dart';


class view extends StatelessWidget {
  view(this.station);

  int pre=-1;
  late int count_interchnage=0;
   Text getSubtitleBasedOnConditions(int index,int size){
     int code=colors[station[index]]!;

     if(index==0)return Text("Start",
         style:TextStyle(color:Colors.black,fontWeight:FontWeight.w700)
     );

     if(index==size-1){
       return Text("Your Destination",
           style:TextStyle(color:Colors.black,fontWeight:FontWeight.w700));
     }




     int pre=colors[station[index-1]]!;
     int next=colors[station[index+1]]!;
     if(code==11 && pre!=next){
       count_interchnage++;
       String change="";
       if(next==1){
         change="Green";
       }
       else if(next==2){
         change="pink";
       }

       else if(next==3){
         change="Red";
       }

       else if(next==4){
         change="Yellow";
       }

       else if(next==5){
         change="Orange";
       }

       else if(next==6){
         change="Violet";
       }

       else if(next==8){
         change="Mangenta";
       }

       else if(next==7){
         change="Blue";
       }




       return Text("Change Here for ${change}" ,
         style:TextStyle(color:Colors.black,
             fontWeight:FontWeight.w700,
             fontSize:14,
            fontFamily:'Roboto',
         )
         ,);
     }


     return Text("");
   }



  int pre_color_value=-1;
  Color getColorBasedOnConditions2(int value ,int index) {

    if(index==0){
      if(value==11){
      int next_index=colors[station[index+1]]!;
      return getColorBasedOnConditions2(next_index,index+1);}


        if (value==1) {
          pre_color_value=value;
          return Color.fromRGBO(111, 125, 64, 1);
        } else if (value==2) {
          pre_color_value=value;
          return Color.fromRGBO(190, 77, 131, 1);
        } else if (value==3) {
          pre_color_value=value;
          return Color.fromRGBO(228, 73, 67, 1);
        } else if(value==4) {
          pre_color_value=value;
          return Color.fromRGBO(238, 193, 45, 1);
        }else if (value==5) {
          pre_color_value=value;
          return Color.fromRGBO(247, 129, 5, 1);
        } else if (value==6) {
          pre_color_value=value;
          return  Colors.indigo;
        } else if(value==7) {
          pre_color_value=value;
          return Color.fromRGBO(0,0,255, 1.0);
        }

    }

    if (value==1) {
      pre_color_value=value;

      return Color.fromRGBO(111, 125, 64, 1);
    } else if (value==2) {
      pre_color_value=value;

      return Color.fromRGBO(190, 77, 131, 1);
    } else if (value==3) {
      pre_color_value=value;
      return Color.fromRGBO(228, 73, 67, 1);
    } else if(value==4) {
      pre_color_value=value;
      return Color.fromRGBO(238, 193, 45, 1);
    }else if (value==5) {
      pre_color_value=value;
      return Color.fromRGBO(247, 129, 5, 1);
    } else if (value==6) {
      pre_color_value=value;
      return  Colors.indigo;
    } else if(value==7) {
      pre_color_value=value;
      return  Color.fromRGBO(12,87,203, 1);
    }

    else if(value==8){
      pre_color_value=value;

      return Color.fromRGBO(161,31,65, 1);
    }

    if(value==11){
      return  getColorBasedOnConditions2(pre_color_value,index);
    }


    return Colors.black;

  }


  int price=20;
  Text getfare(int size){
    if(size<=6){
      price=20;
    }

    else if(size>6 && size<=13){
      price=30;
    }
    else if(size>13 && size<=19){
      price=40;
    }
    else if(size>19 && size<=26)price=50;

    else if(size>26 && size<=38)price=60;

else price=70;

    return Text("Fare:${price}",
      style:TextStyle(
        color:Color.fromRGBO(255, 220, 186, 1.0),
        fontWeight:FontWeight.w700,
        fontSize:25,
        shadows: [
          Shadow(
            color: Colors.black,
            offset: Offset(2, 2),
            blurRadius: 3,
          ),
        ],
      ),
    );
  }


   Text gettime(int size){
    int time=2;



    time=time*size+5*count_interchnage;
    print(time);

    return Text("Time:${time}",
      style:TextStyle(
        color:Color.fromRGBO(255, 220, 186, 1.0),
        fontWeight:FontWeight.w700,
        fontSize:25,
        shadows: [
          Shadow(
            color: Colors.black,
            offset: Offset(2, 2),
            blurRadius: 3,
          ),
        ],
      ),
    );
  }

  Map<String,int>colors=color();
  final List<String> station;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(214, 146, 47, 1),
        title: Row(
          children: [
            Text("Routes"),
            Icon(Icons.directions_train_outlined),
          ],
        ),
        actions: [
          IconButton(onPressed: (){

            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const textfield()),
            );
          }, icon:Icon(Icons.home_filled)),

        ],

      ),
      body:Column(
        children: [
          Container(

              color:Color.fromRGBO(255, 220, 186, 1.0),
              child:Row(

                children: [

                  Container(

                    width:(MediaQuery.of(context).size.width)/2,
                    height:60,
                    decoration: BoxDecoration(
                      color:Color.fromRGBO(137, 107, 74, .9),
                      border: Border.all(
                        color: Color.fromRGBO(34, 64, 56, 1.0),  // Set the color of the border
                        width: 1.8,           // Set the width of the border
                      ),
                    ),
                    child: Center(
                      child:Text("Station:${station.length}",
                        style:TextStyle(

                          color:Color.fromRGBO(255, 220, 186, 1.0),
                          fontWeight:FontWeight.w700,
                          shadows: [
                            Shadow(
                              color: Colors.black,
                              offset: Offset(2, 2),
                              blurRadius: 3,
                            ),
                          ],
                          fontSize:25,
                        ),
                      ),
                    ),

                  ),
                  Container(
                    height:60,
                    width:(MediaQuery.of(context).size.width)/2,
                    decoration: BoxDecoration(

                      color:Color.fromRGBO(137, 107, 74, .9),
                      border: Border.all(
                        color: Color.fromRGBO(34, 64, 56, 1.0),  // Set the color of the border
                        width: 1.8,           // Set the width of the border
                      ),
                    ),
                    child:Center(
                      child:gettime(station.length),
                    ),
                  )
                ],
              )


          ),
          Container(

            height:40,
            width:(MediaQuery.of(context).size.width),
            decoration: BoxDecoration(

              color:Color.fromRGBO(137, 107, 74, .9),
              border: Border.all(
                color: Color.fromRGBO(34, 64, 56, 1.0),  // Set the color of the border
                width: 1.8,           // Set the width of the border
              ),
            ),
            child:Center(
              child:getfare(station.length),
            ),
          ),
          Expanded(

              child:
          ListView.separated(itemBuilder: (context,index){
            contentPadding: EdgeInsets.only(left: 0.0, right: 0.0);
            return  Container(

               color:Color.fromRGBO(255, 220, 186, 1.0),
               child: ListTile(
                 contentPadding: EdgeInsets.only(left: 10, right: 0.0),
                  leading: Icon(
                    Icons.circle,
                    color: getColorBasedOnConditions2(colors[station[index]]!,index),
                  ),
                  title:Text(

                    station[index],
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily:'Snell Roundhand',
                      fontWeight: FontWeight.bold,

                      color:Colors.black54,
// Additional properties for text styling
                    ),
                  ),


                  trailing: Icon(
                    Icons.arrow_downward_outlined,
                    color:getColorBasedOnConditions2(colors[station[index]]!,index),
                    size:30,
                  ),

                  subtitle:getSubtitleBasedOnConditions(index,station.length),
                  selected: true,
                )
            );
          },
              itemCount:station.length,
              separatorBuilder: (context,index){
                return Divider(
                  height:0,);
              }
          ))
        ],
      )
    );
  }
}


