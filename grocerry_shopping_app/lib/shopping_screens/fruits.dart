import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width/2,
      child: LayoutBuilder(
          builder: (context, constraints){
            return OrientationBuilder(
                builder: (context, orientation){
                  return Fruits();
                }
            );
          }

      ),
    );
  }
}

class Fruits extends StatefulWidget {
  @override
  _FruitsState createState() => _FruitsState();
}

class _FruitsState extends State<Fruits> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 8, right: 8, top: 17),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              new Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        GestureDetector(
                          child: BuildFruitCard("Kiwi", "₹200" , "assets/images/kiwi.png"),
                        ),
                        SizedBox(height: 10,),
                        GestureDetector(
                          child: BuildFruitCard("Avocado", "₹180" , "assets/images/avocado.png"),
                        ),
                        SizedBox(height: 10,),

                        new BuildFruitCard("Papaya", "₹80" , "assets/images/papaya.png"),


                      ],
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        new OfferWidget(),
                        SizedBox(height: 10,),
                        new BuildFruitCard("Strawberry", "₹150" , "assets/images/strawberry.png"),
                        SizedBox(height: 10,),

                        new BuildFruitCard("Mango", "₹100" , "assets/images/mango.png"),

                      ],
                    ),
                  )
                ],
              ),
            ],
          )
        ),
      ),
    );
  }
}

class BuildFruitCard extends StatelessWidget {
  String name, price, asset;
  BuildFruitCard(String name, String price, String asset){
    this.name = name;
    this.price = price;
    this.asset = asset;

  }

  @override
  Widget build(BuildContext context) {
    {
      return Container(
          decoration: BoxDecoration(
              color: Color(0xffF7DFB9),
              borderRadius: BorderRadius.circular(20.00)
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XffFAF0DA),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                          Icons.add
                      ),
                    ),
                  ),
                ),

                Center(
                  child: Image.asset(asset,
                    fit: BoxFit.contain,
                    height: 200,
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(name, style: TextStyle(
                    fontFamily: 'OpenSans-Bold',
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 10.0, top: 10.0, right: 10.0),
                  child: Container(
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Text(price, style: TextStyle(
                              fontFamily: 'OpenSans',
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),),
                            Text("Per Kilo", style: TextStyle(
                              fontFamily: 'OpenSans',
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),),
                          ],
                        ),
                        Spacer(),
                        Text("View Prices",
                          style: TextStyle(
                            fontFamily: 'OpenSans',
                            color: Colors.black87,
                            fontWeight: FontWeight.bold,
                          ),)
                      ],
                    ),
                  ),
                ),

                SizedBox(
                  height: 10,
                )

              ],
            ),
          )
      );
    }
  }
}

class OfferWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(0xffECEDF1),

    ),
      width: 195,
      child: Padding(
        padding: const EdgeInsets.only(left:8.0, right: 8.0, top: 18, bottom: 18),
        child: Column(
          children: [
            Text("A Spring Surprise", style: TextStyle(
              fontFamily: "OpenSans",

            ),),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("40% OFF", style: TextStyle(
                  fontFamily: "OpenSans-Bold",
                fontSize: 25
              ),),
            ),

            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5.0),
                  border: Border.all(color: Colors.green)
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text("FOODLY SURPRISE", style: TextStyle(
                    color: Colors.green,
                    fontFamily: 'OpenSans',
                    fontWeight: FontWeight.bold
                ),),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text("Use the code above for Spring collection purchases",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: 'OpenSans-Bold',
              ),),
          ],
        ),
      ),
    );
  }
}




