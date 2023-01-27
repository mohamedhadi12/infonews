import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:flutter/material.dart';

 class Recerhches extends StatelessWidget {

  TextEditingController textController= TextEditingController();

   @override
   Widget build(BuildContext context) {
     return Scaffold(
       body: Container(
         child: Column(
           children: [
             AnimSearchBar(

                 width: 400,
                 textController: textController,
                 onSuffixTap:(){
                   setState( ()
                   { textController.clear();
                     } );
                 },
               color: Colors.blue,
               closeSearchOnSuffixTap: true,
               animationDurationInMilli: 2000,
               rtl: true,
               helpText: ("recherch"),
               autoFocus: true,
               onSubmitted: (String ) {  }
               ,)
           ],
         ),
       ),
     );
   }

  void setState(Null Function() param0) {}
 }

