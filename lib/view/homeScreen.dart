import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quize_exam/model/animalModel.dart';
import 'package:quize_exam/provider/animalProvider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  AnimalProvider? providerF;
  AnimalProvider? providerT;
  AnimalModel animalModel = AnimalModel();

  int index = 0;

  void initState() {
    super.initState();
    Provider.of<AnimalProvider>(context, listen: false).ajson();
  }

  @override
  Widget build(BuildContext context) {
    providerT = Provider.of<AnimalProvider>(context, listen: true);
    providerF = Provider.of<AnimalProvider>(context, listen: false);
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.orangeAccent.shade100,
            title: Text("Quize Game",
                style: TextStyle(
                    fontSize: 20,
                    letterSpacing: 1,
                    color: Colors.black,
                    shadows: [
                      Shadow(
                          color: Colors.white,
                          blurRadius: 1,
                          offset: Offset(0.5, 1))
                    ])),
            actions: [
              Icon(
                Icons.search_sharp,
                color: Colors.black,
                size: 25,
              ),
              SizedBox(width: 18)
            ],
          ),
          backgroundColor: Colors.orange.shade50,
          body: ListView(
            children: [
              SizedBox(height: 30),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 120),
                  Container(
                    height: 90,
                    width: 300,
                    child: Text(
                        "Q : ${providerF!.io + 1} --> ${providerF!.animalModal.results![providerF!.io].question}",
                        style: TextStyle(
                          fontSize: 20,
                          letterSpacing: 1,
                          color: Colors.black,
                        )),
                  ),
                  SizedBox(height: 20),
                  Container(
                    margin: EdgeInsets.all(5),
                    width: 300,
                    height: 40,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 2),
                        borderRadius: BorderRadius.circular(15)),
                    child: Center(
                      child: Text(
                          "A : ${providerF!.animalModal.results![providerF!.io].correctAnswer}",
                          style: TextStyle(
                            fontSize: 18,
                            letterSpacing: 1,
                            color: Colors.black,
                          )),
                    ),
                  ),
                  SizedBox(height: 5),
                  Container(
                    margin: EdgeInsets.all(5),
                    width: 300,
                    height: 40,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 2),
                        borderRadius: BorderRadius.circular(15)),
                    child: Center(
                      child: Text(
                          "B : ${providerF!.animalModal.results![providerF!.io].incorrectAnswers![0]}",
                          style: TextStyle(
                            fontSize: 18,
                            letterSpacing: 1,
                            color: Colors.black,
                          )),
                    ),
                  ),
                  SizedBox(height: 5),
                  Container(
                    margin: EdgeInsets.all(5),
                    width: 300,
                    height: 40,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 2),
                        borderRadius: BorderRadius.circular(15)),
                    child: Center(
                      child: Text(
                          "C : ${providerF!.animalModal.results![providerF!.io].incorrectAnswers![1]}",
                          style: TextStyle(
                            fontSize: 18,
                            letterSpacing: 1,
                            color: Colors.black,
                          )),
                    ),
                  ),
                  SizedBox(height: 5),
                  Container(
                    margin: EdgeInsets.all(5),
                    width: 300,
                    height: 40,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 2),
                        borderRadius: BorderRadius.circular(15)),
                    child: Center(
                      child: Text(
                          "D : ${providerF!.animalModal.results![providerF!.io].incorrectAnswers![2]}",
                          style: TextStyle(
                            fontSize: 18,
                            letterSpacing: 1,
                            color: Colors.black,
                          )),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 50),
              ElevatedButton(
                onPressed: () {
                  providerF!.plus();
                },
                child: Text("Next",
                    style: TextStyle(
                      fontSize: 20,
                      letterSpacing: 1,
                      color: Colors.black,
                    )),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orangeAccent.shade100,
                    elevation: 0),
              )
            ],
          )),
    );
  }
}
