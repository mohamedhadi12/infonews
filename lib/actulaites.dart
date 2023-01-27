import 'package:flutter/material.dart';

class Actualites extends StatelessWidget {
  const Actualites({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView(
        children: [
          Card(
            child:ListTile(
              leading: Image.asset("assets/images/imge.jpg") ,
              title: Text("Recevez gratuitement un terminal et un Système de paiement! "),
              trailing: Icon(Icons.more_vert),
            ) ,
          ),
          Card(
            child:ListTile(
              leading: Image.asset("assets/images/img.jpg") ,
              title: Text("Une passerelle Unique pour recevoir vos paiements partout au Niger et dans le monde  "),
              trailing: Icon(Icons.more_vert),
            ) ,
          ),
          Card(
            child:ListTile(
              leading: Image.asset("assets/images/part.jpg") ,
              title: Text("i-FUTUR en partenariat avec l'UN Capital Development Found(UNCDF), deploie un Système de paiement électronique"),
              trailing: Icon(Icons.more_vert),
            ) ,
          ),
          Card(
            child:ListTile(
              leading: Image.asset("assets/images/imge.jpg") ,
              title: Text("Créer votre compte sur iPayMoney dès aujourd'hui. Notre équipe technique est disponible pour vous aider. C'est simple et accessible pour tous  "),
              trailing: Icon(Icons.more_vert),
            ) ,
          ),

        ],
      ),
    );
  }
}
