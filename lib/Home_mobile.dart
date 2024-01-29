import 'package:flutter/material.dart';
import 'FirebaseAutosignIn.dart';
import 'ReusableWidgets.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView( // Wrap the content with SingleChildScrollView
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "Votre Shynlei",
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  "7 Étapes, 2 fiches pour prendre note des \n\nrencontres, 1 page pour éclairer le sens, 3 \n\ninterprétations pour vous aider..",
                  textAlign: TextAlign.start,
                ),
              ),
              ReusableWidget(
                image: 'assets/Page-1.png',
                text: "1. Le rêve libère l'expression",
              ),
              //SizedBox(height: 8),
              ReusableWidget(
                image: 'assets/Page-2.png',
                text: "2. Le sens éclaire le parcours",
              ),
              //SizedBox(height: 8),
              ReusableWidget(
                image: 'assets/Page-3.png',
                text: "3. La différence rend unique",
              ),
              //SizedBox(height: 8),
              ReusableWidget(
                image: 'assets/Page-4.png',
                text: "4. La valeur humaine met en mouvement",
              ),
              //SizedBox(height: 8),
              ReusableWidget(
                image: 'assets/Page-5.png',
                text: "5. La Clé exprime le style",
              ),
              //SizedBox(height: 8),
              ReusableWidget(
                image: 'assets/Page-6.png',
                text: "6. Le parcours associe rêve et réalité",
              ),
              //SizedBox(height: 8),
              ReusableWidget(
                image: 'assets/Page-7.png',
                text: "7. Le Ciel bleu révèle l'alignement",
              ),
              //SizedBox(height: 15),
              Container(
                alignment: Alignment.center,
                height: 350,
                padding: EdgeInsets.only(bottom: 300),

                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  signIn()),
                    );
                  },
                  child: Text(
                    "   EXPRIMER MES RÊVES >>   ",
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Color(0xFF7BBBBA)),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
