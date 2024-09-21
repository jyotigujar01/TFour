import 'package:flutter/material.dart';

class Extendeditem extends StatefulWidget {
  const Extendeditem({Key? key,
    required this.parentItem,
    required this.Screen_name,
    required this.Screen_Icon,required this.screens,required this.numberofitems,required this.parentIcon})
  :super(key: key);

  final String parentItem;

  final List Screen_name;
  final List Screen_Icon;

  final List screens;
  final int numberofitems;
  final Icon parentIcon;

  @override
  State<Extendeditem> createState() => _ExtendeditemState();
}

class _ExtendeditemState extends State<Extendeditem> {
  bool isExpanded = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: () {
              if(isExpanded){
                isExpanded = false;
              }else {
                isExpanded = true;
              }
              setState(() {});
            },
            child: Padding(padding: const EdgeInsets.only(left: 18.0, top: 15, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Icon(widget.parentIcon.icon,color: Color(0xFF023b6d), size: 15),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Text(widget.parentItem,style: TextStyle(fontFamily: "MontserratRegular"),),
                      ),

                    ],
                  ),
                  Icon(Icons.keyboard_arrow_down_outlined,color: Color(0xFF023b6d)),
                ],
              ),
            ),
          ),
          ListView.builder(itemBuilder: (context,index){
            return Visibility(
              visible: isExpanded,
                child: InkWell(
                  onTap: (){
                    Navigator.pop(context);
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>widget.screens[index]));
                    },
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 25, top: 9),
                        child: Icon(widget.Screen_Icon[index].icon, size: 15),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0, top: 9),
                        child: Text(widget.Screen_name[index],style: TextStyle(fontFamily: "MontserratRegular"),),
                      ),
                    ],
                  ),
                )
            );
          },
            itemCount: widget.numberofitems,
            physics: const ScrollPhysics(),
            shrinkWrap: true,
            padding: const EdgeInsets.only(left: 18.0,right: 10),
          )
        ],
      ),
    );
  }
}
